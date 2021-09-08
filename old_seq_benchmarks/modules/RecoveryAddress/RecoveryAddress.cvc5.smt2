(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-logic ALL)
; done setting options


(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_116152 0)) ((($Memory_116152 (|domain#$Memory_116152| |T@[Int]Bool|) (|contents#$Memory_116152| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$native_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_199714 0)) ((($Memory_199714 (|domain#$Memory_199714| |T@[Int]Bool|) (|contents#$Memory_199714| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_196603 0)) ((($Memory_196603 (|domain#$Memory_196603| |T@[Int]Bool|) (|contents#$Memory_196603| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_194397 0)) ((($Memory_194397 (|domain#$Memory_194397| |T@[Int]Bool|) (|contents#$Memory_194397| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_194677 0)) ((($Memory_194677 (|domain#$Memory_194677| |T@[Int]Bool|) (|contents#$Memory_194677| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_194364 0)) ((($Memory_194364 (|domain#$Memory_194364| |T@[Int]Bool|) (|contents#$Memory_194364| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_194149 0)) ((($Memory_194149 (|domain#$Memory_194149| |T@[Int]Bool|) (|contents#$Memory_194149| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_124467 0)) ((($Memory_124467 (|domain#$Memory_124467| |T@[Int]Bool|) (|contents#$Memory_124467| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (Seq Int)) (|$base_url#$1_DualAttestation_Credential| (Seq Int)) (|$compliance_public_key#$1_DualAttestation_Credential| (Seq Int)) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_126892 0)) ((($Memory_126892 (|domain#$Memory_126892| |T@[Int]Bool|) (|contents#$Memory_126892| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_161035 0)) ((($Memory_161035 (|domain#$Memory_161035| |T@[Int]Bool|) (|contents#$Memory_161035| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_160971 0)) ((($Memory_160971 (|domain#$Memory_160971| |T@[Int]Bool|) (|contents#$Memory_160971| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_160659 0)) ((($Memory_160659 (|domain#$Memory_160659| |T@[Int]Bool|) (|contents#$Memory_160659| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_Window'$1_XDX_XDX'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_157393 0)) ((($Memory_157393 (|domain#$Memory_157393| |T@[Int]Bool|) (|contents#$Memory_157393| |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_Window'$1_XUS_XUS'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_157106 0)) ((($Memory_157106 (|domain#$Memory_157106| |T@[Int]Bool|) (|contents#$Memory_157106| |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_156819 0)) ((($Memory_156819 (|domain#$Memory_156819| |T@[Int]Bool|) (|contents#$Memory_156819| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_156600 0)) ((($Memory_156600 (|domain#$Memory_156600| |T@[Int]Bool|) (|contents#$Memory_156600| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_196210 0)) ((($Memory_196210 (|domain#$Memory_196210| |T@[Int]Bool|) (|contents#$Memory_196210| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_149060 0)) ((($Memory_149060 (|domain#$Memory_149060| |T@[Int]Bool|) (|contents#$Memory_149060| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_148973 0)) ((($Memory_148973 (|domain#$Memory_148973| |T@[Int]Bool|) (|contents#$Memory_148973| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_144340 0)) ((($Memory_144340 (|domain#$Memory_144340| |T@[Int]Bool|) (|contents#$Memory_144340| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_144253 0)) ((($Memory_144253 (|domain#$Memory_144253| |T@[Int]Bool|) (|contents#$Memory_144253| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'#0'| 0)) (((|$1_Diem_Diem'#0'| (|$value#$1_Diem_Diem'#0'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'#0'| 0)) (((|$1_Diem_Preburn'#0'| (|$to_burn#$1_Diem_Preburn'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'#0'| 0)
(declare-datatypes ((T@$Memory_149415 0)) ((($Memory_149415 (|domain#$Memory_149415| |T@[Int]Bool|) (|contents#$Memory_149415| |T@[Int]$1_Diem_Preburn'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'#0'| 0)) (((|$1_Diem_PreburnWithMetadata'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| |T@$1_Diem_Preburn'#0'|) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'#0'| 0)) (((|$1_Diem_PreburnQueue'#0'| (|$preburns#$1_Diem_PreburnQueue'#0'| (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'#0'| 0)
(declare-datatypes ((T@$Memory_149840 0)) ((($Memory_149840 (|domain#$Memory_149840| |T@[Int]Bool|) (|contents#$Memory_149840| |T@[Int]$1_Diem_PreburnQueue'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_196436 0)) ((($Memory_196436 (|domain#$Memory_196436| |T@[Int]Bool|) (|contents#$Memory_196436| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_149324 0)) ((($Memory_149324 (|domain#$Memory_149324| |T@[Int]Bool|) (|contents#$Memory_149324| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_159326 0)) ((($Memory_159326 (|domain#$Memory_159326| |T@[Int]Bool|) (|contents#$Memory_159326| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_149741 0)) ((($Memory_149741 (|domain#$Memory_149741| |T@[Int]Bool|) (|contents#$Memory_149741| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_196345 0)) ((($Memory_196345 (|domain#$Memory_196345| |T@[Int]Bool|) (|contents#$Memory_196345| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_149233 0)) ((($Memory_149233 (|domain#$Memory_149233| |T@[Int]Bool|) (|contents#$Memory_149233| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_161308 0)) ((($Memory_161308 (|domain#$Memory_161308| |T@[Int]Bool|) (|contents#$Memory_161308| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_149642 0)) ((($Memory_149642 (|domain#$Memory_149642| |T@[Int]Bool|) (|contents#$Memory_149642| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'#0'| 0)) (((|$1_Diem_CurrencyInfo'#0'| (|$total_value#$1_Diem_CurrencyInfo'#0'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| Int) (|$currency_code#$1_Diem_CurrencyInfo'#0'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'#0'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'#0'| 0)
(declare-datatypes ((T@$Memory_143800 0)) ((($Memory_143800 (|domain#$Memory_143800| |T@[Int]Bool|) (|contents#$Memory_143800| |T@[Int]$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_143664 0)) ((($Memory_143664 (|domain#$Memory_143664| |T@[Int]Bool|) (|contents#$Memory_143664| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_143600 0)) ((($Memory_143600 (|domain#$Memory_143600| |T@[Int]Bool|) (|contents#$Memory_143600| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_139547 0)) ((($Memory_139547 (|domain#$Memory_139547| |T@[Int]Bool|) (|contents#$Memory_139547| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_139460 0)) ((($Memory_139460 (|domain#$Memory_139460| |T@[Int]Bool|) (|contents#$Memory_139460| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_139373 0)) ((($Memory_139373 (|domain#$Memory_139373| |T@[Int]Bool|) (|contents#$Memory_139373| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_139286 0)) ((($Memory_139286 (|domain#$Memory_139286| |T@[Int]Bool|) (|contents#$Memory_139286| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_139199 0)) ((($Memory_139199 (|domain#$Memory_139199| |T@[Int]Bool|) (|contents#$Memory_139199| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_139812 0)) ((($Memory_139812 (|domain#$Memory_139812| |T@[Int]Bool|) (|contents#$Memory_139812| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_138325 0)) ((($Memory_138325 (|domain#$Memory_138325| |T@[Int]Bool|) (|contents#$Memory_138325| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_138391 0)) ((($Memory_138391 (|domain#$Memory_138391| |T@[Int]Bool|) (|contents#$Memory_138391| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_138244 0)) ((($Memory_138244 (|domain#$Memory_138244| |T@[Int]Bool|) (|contents#$Memory_138244| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_138163 0)) ((($Memory_138163 (|domain#$Memory_138163| |T@[Int]Bool|) (|contents#$Memory_138163| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| (Seq (Seq Int))) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_138082 0)) ((($Memory_138082 (|domain#$Memory_138082| |T@[Int]Bool|) (|contents#$Memory_138082| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_138001 0)) ((($Memory_138001 (|domain#$Memory_138001| |T@[Int]Bool|) (|contents#$Memory_138001| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_137887 0)) ((($Memory_137887 (|domain#$Memory_137887| |T@[Int]Bool|) (|contents#$Memory_137887| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (Seq Int)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_195347 0)) ((($Memory_195347 (|domain#$Memory_195347| |T@[Int]Bool|) (|contents#$Memory_195347| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| (Seq Int)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_137920 0)) ((($Memory_137920 (|domain#$Memory_137920| |T@[Int]Bool|) (|contents#$Memory_137920| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_137376 0)) ((($Memory_137376 (|domain#$Memory_137376| |T@[Int]Bool|) (|contents#$Memory_137376| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_136806 0)) ((($Memory_136806 (|domain#$Memory_136806| |T@[Int]Bool|) (|contents#$Memory_136806| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_124848 0)) ((($Memory_124848 (|domain#$Memory_124848| |T@[Int]Bool|) (|contents#$Memory_124848| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_122999 0)) ((($Memory_122999 (|domain#$Memory_122999| |T@[Int]Bool|) (|contents#$Memory_122999| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
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
(declare-datatypes ((T@Multiset_91859 0)) (((Multiset_91859 (|v#Multiset_91859| |T@[$EventRep]Int|) (|l#Multiset_91859| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_91859| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_91859|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_197431 0)) ((($Mutation_197431 (|l#$Mutation_197431| T@$Location) (|p#$Mutation_197431| (Seq Int)) (|v#$Mutation_197431| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_197387 0)) ((($Mutation_197387 (|l#$Mutation_197387| T@$Location) (|p#$Mutation_197387| (Seq Int)) (|v#$Mutation_197387| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_191261 0)) ((($Mutation_191261 (|l#$Mutation_191261| T@$Location) (|p#$Mutation_191261| (Seq Int)) (|v#$Mutation_191261| T@$1_DualAttestation_Limit) ) ) ))
(declare-datatypes ((T@$Mutation_187670 0)) ((($Mutation_187670 (|l#$Mutation_187670| T@$Location) (|p#$Mutation_187670| (Seq Int)) (|v#$Mutation_187670| T@$1_DualAttestation_Credential) ) ) ))
(declare-datatypes ((T@$Mutation_42021 0)) ((($Mutation_42021 (|l#$Mutation_42021| T@$Location) (|p#$Mutation_42021| (Seq Int)) (|v#$Mutation_42021| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_155320 0)) ((($Mutation_155320 (|l#$Mutation_155320| T@$Location) (|p#$Mutation_155320| (Seq Int)) (|v#$Mutation_155320| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_142341 0)) ((($Mutation_142341 (|l#$Mutation_142341| T@$Location) (|p#$Mutation_142341| (Seq Int)) (|v#$Mutation_142341| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_123518 0)) ((($Mutation_123518 (|l#$Mutation_123518| T@$Location) (|p#$Mutation_123518| (Seq Int)) (|v#$Mutation_123518| T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) ) ))
(declare-datatypes ((T@$Mutation_116783 0)) ((($Mutation_116783 (|l#$Mutation_116783| T@$Location) (|p#$Mutation_116783| (Seq Int)) (|v#$Mutation_116783| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_13443 0)) ((($Mutation_13443 (|l#$Mutation_13443| T@$Location) (|p#$Mutation_13443| (Seq Int)) (|v#$Mutation_13443| Int) ) ) ))
(declare-datatypes ((T@$Mutation_111899 0)) ((($Mutation_111899 (|l#$Mutation_111899| T@$Location) (|p#$Mutation_111899| (Seq Int)) (|v#$Mutation_111899| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_111153 0)) ((($Mutation_111153 (|l#$Mutation_111153| T@$Location) (|p#$Mutation_111153| (Seq Int)) (|v#$Mutation_111153| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((T@$Mutation_109749 0)) ((($Mutation_109749 (|l#$Mutation_109749| T@$Location) (|p#$Mutation_109749| (Seq Int)) (|v#$Mutation_109749| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_109003 0)) ((($Mutation_109003 (|l#$Mutation_109003| T@$Location) (|p#$Mutation_109003| (Seq Int)) (|v#$Mutation_109003| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((T@$Mutation_107599 0)) ((($Mutation_107599 (|l#$Mutation_107599| T@$Location) (|p#$Mutation_107599| (Seq Int)) (|v#$Mutation_107599| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_106853 0)) ((($Mutation_106853 (|l#$Mutation_106853| T@$Location) (|p#$Mutation_106853| (Seq Int)) (|v#$Mutation_106853| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-datatypes ((T@$Mutation_105449 0)) ((($Mutation_105449 (|l#$Mutation_105449| T@$Location) (|p#$Mutation_105449| (Seq Int)) (|v#$Mutation_105449| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_104703 0)) ((($Mutation_104703 (|l#$Mutation_104703| T@$Location) (|p#$Mutation_104703| (Seq Int)) (|v#$Mutation_104703| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-datatypes ((T@$Mutation_103299 0)) ((($Mutation_103299 (|l#$Mutation_103299| T@$Location) (|p#$Mutation_103299| (Seq Int)) (|v#$Mutation_103299| |T@$1_Diem_PreburnWithMetadata'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_102553 0)) ((($Mutation_102553 (|l#$Mutation_102553| T@$Location) (|p#$Mutation_102553| (Seq Int)) (|v#$Mutation_102553| (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) ) ))
(declare-datatypes ((T@$Mutation_101149 0)) ((($Mutation_101149 (|l#$Mutation_101149| T@$Location) (|p#$Mutation_101149| (Seq Int)) (|v#$Mutation_101149| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_100403 0)) ((($Mutation_100403 (|l#$Mutation_100403| T@$Location) (|p#$Mutation_100403| (Seq Int)) (|v#$Mutation_100403| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((T@$Mutation_98999 0)) ((($Mutation_98999 (|l#$Mutation_98999| T@$Location) (|p#$Mutation_98999| (Seq Int)) (|v#$Mutation_98999| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_98253 0)) ((($Mutation_98253 (|l#$Mutation_98253| T@$Location) (|p#$Mutation_98253| (Seq Int)) (|v#$Mutation_98253| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$Mutation_96849 0)) ((($Mutation_96849 (|l#$Mutation_96849| T@$Location) (|p#$Mutation_96849| (Seq Int)) (|v#$Mutation_96849| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_96103 0)) ((($Mutation_96103 (|l#$Mutation_96103| T@$Location) (|p#$Mutation_96103| (Seq Int)) (|v#$Mutation_96103| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_94661 0)) ((($Mutation_94661 (|l#$Mutation_94661| T@$Location) (|p#$Mutation_94661| (Seq Int)) (|v#$Mutation_94661| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_93915 0)) ((($Mutation_93915 (|l#$Mutation_93915| T@$Location) (|p#$Mutation_93915| (Seq Int)) (|v#$Mutation_93915| (Seq |T@#0|)) ) ) ))
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
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_91859_| (|T@[$1_Event_EventHandle]Multiset_91859| T@$1_Event_EventHandle) T@Multiset_91859)
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
(declare-fun ReverseVec_13296 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_83590 ((Seq T@$1_ValidatorConfig_Config)) (Seq T@$1_ValidatorConfig_Config))
(declare-fun ReverseVec_82408 ((Seq T@$1_DiemAccount_KeyRotationCapability)) (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun ReverseVec_82605 ((Seq T@$1_DiemAccount_WithdrawCapability)) (Seq T@$1_DiemAccount_WithdrawCapability))
(declare-fun ReverseVec_82802 ((Seq T@$1_DiemSystem_ValidatorInfo)) (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun ReverseVec_83787 ((Seq (Seq Int))) (Seq (Seq Int)))
(declare-fun ReverseVec_83393 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|))
(declare-fun ReverseVec_83196 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|))
(declare-fun ReverseVec_82999 ((Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) (Seq |T@$1_Diem_PreburnWithMetadata'#0'|))
(declare-fun ReverseVec_82211 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_91859| |T@[$1_Event_EventHandle]Multiset_91859|) |T@[$1_Event_EventHandle]Multiset_91859|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |RecoveryAddresscvc5bpl.165:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |RecoveryAddresscvc5bpl.169:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |RecoveryAddresscvc5bpl.173:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |RecoveryAddresscvc5bpl.177:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |RecoveryAddresscvc5bpl.181:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |RecoveryAddresscvc5bpl.191:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |RecoveryAddresscvc5bpl.457:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |RecoveryAddresscvc5bpl.466:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |RecoveryAddresscvc5bpl.595:13|
 :skolemid |15|
))))
 :qid |RecoveryAddresscvc5bpl.593:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |RecoveryAddresscvc5bpl.600:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |RecoveryAddresscvc5bpl.608:17|
 :skolemid |18|
)))))
 :qid |RecoveryAddresscvc5bpl.604:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (seq.nth v@@6 i@@3)))
 :qid |RecoveryAddresscvc5bpl.775:13|
 :skolemid |20|
))))
 :qid |RecoveryAddresscvc5bpl.773:62|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 (Seq T@$1_DiemAccount_KeyRotationCapability)) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@4 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |RecoveryAddresscvc5bpl.780:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |RecoveryAddresscvc5bpl.788:17|
 :skolemid |23|
)))))
 :qid |RecoveryAddresscvc5bpl.784:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (seq.nth v@@8 i@@6)))
 :qid |RecoveryAddresscvc5bpl.955:13|
 :skolemid |25|
))))
 :qid |RecoveryAddresscvc5bpl.953:59|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 (Seq T@$1_DiemAccount_WithdrawCapability)) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@7 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |RecoveryAddresscvc5bpl.960:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |RecoveryAddresscvc5bpl.968:17|
 :skolemid |28|
)))))
 :qid |RecoveryAddresscvc5bpl.964:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (seq.nth v@@10 i@@9)))
 :qid |RecoveryAddresscvc5bpl.1135:13|
 :skolemid |30|
))))
 :qid |RecoveryAddresscvc5bpl.1133:53|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_DiemSystem_ValidatorInfo)) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |RecoveryAddresscvc5bpl.1140:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |RecoveryAddresscvc5bpl.1148:17|
 :skolemid |33|
)))))
 :qid |RecoveryAddresscvc5bpl.1144:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| (seq.nth v@@12 i@@12)))
 :qid |RecoveryAddresscvc5bpl.1315:13|
 :skolemid |35|
))))
 :qid |RecoveryAddresscvc5bpl.1313:57|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12))
)))
(assert (forall ((v@@13 (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) (e@@3 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (let ((i@@13 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |RecoveryAddresscvc5bpl.1320:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |RecoveryAddresscvc5bpl.1328:17|
 :skolemid |38|
)))))
 :qid |RecoveryAddresscvc5bpl.1324:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (seq.nth v@@14 i@@15)))
 :qid |RecoveryAddresscvc5bpl.1495:13|
 :skolemid |40|
))))
 :qid |RecoveryAddresscvc5bpl.1493:65|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14))
)))
(assert (forall ((v@@15 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@16 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |RecoveryAddresscvc5bpl.1500:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |RecoveryAddresscvc5bpl.1508:17|
 :skolemid |43|
)))))
 :qid |RecoveryAddresscvc5bpl.1504:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (seq.nth v@@16 i@@18)))
 :qid |RecoveryAddresscvc5bpl.1675:13|
 :skolemid |45|
))))
 :qid |RecoveryAddresscvc5bpl.1673:65|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16))
)))
(assert (forall ((v@@17 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (e@@5 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@19 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |RecoveryAddresscvc5bpl.1680:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |RecoveryAddresscvc5bpl.1688:17|
 :skolemid |48|
)))))
 :qid |RecoveryAddresscvc5bpl.1684:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5))
)))
(assert (forall ((v@@18 (Seq T@$1_ValidatorConfig_Config)) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@18)  (and (|$IsValid'u64'| (seq.len v@@18)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len v@@18))) (|$IsValid'$1_ValidatorConfig_Config'| (seq.nth v@@18 i@@21)))
 :qid |RecoveryAddresscvc5bpl.1855:13|
 :skolemid |50|
))))
 :qid |RecoveryAddresscvc5bpl.1853:51|
 :skolemid |51|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@18))
)))
(assert (forall ((v@@19 (Seq T@$1_ValidatorConfig_Config)) (e@@6 T@$1_ValidatorConfig_Config) ) (! (let ((i@@22 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@19 e@@6)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (and (>= i@@23 0) (< i@@23 (seq.len v@@19)))) (= (seq.nth v@@19 i@@23) e@@6))
 :qid |RecoveryAddresscvc5bpl.1860:13|
 :skolemid |52|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (and (>= i@@22 0) (< i@@22 (seq.len v@@19)))) (= (seq.nth v@@19 i@@22) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@22)) (not (= (seq.nth v@@19 j@@6) e@@6)))
 :qid |RecoveryAddresscvc5bpl.1868:17|
 :skolemid |53|
)))))
 :qid |RecoveryAddresscvc5bpl.1864:15|
 :skolemid |54|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@19 e@@6))
)))
(assert (forall ((v@@20 (Seq (Seq Int))) ) (! (= (|$IsValid'vec'vec'u8'''| v@@20)  (and (|$IsValid'u64'| (seq.len v@@20)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len v@@20))) (|$IsValid'vec'u8''| (seq.nth v@@20 i@@24)))
 :qid |RecoveryAddresscvc5bpl.2035:13|
 :skolemid |55|
))))
 :qid |RecoveryAddresscvc5bpl.2033:33|
 :skolemid |56|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@20))
)))
(assert (forall ((v@@21 (Seq (Seq Int))) (e@@7 (Seq Int)) ) (! (let ((i@@25 (|$IndexOfVec'vec'u8''| v@@21 e@@7)))
(ite  (not (exists ((i@@26 Int) ) (!  (and (and (|$IsValid'u64'| i@@26) (and (>= i@@26 0) (< i@@26 (seq.len v@@21)))) (= (seq.nth v@@21 i@@26) e@@7))
 :qid |RecoveryAddresscvc5bpl.2040:13|
 :skolemid |57|
))) (= i@@25 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@25) (and (>= i@@25 0) (< i@@25 (seq.len v@@21)))) (= (seq.nth v@@21 i@@25) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@25)) (not (= (seq.nth v@@21 j@@7) e@@7)))
 :qid |RecoveryAddresscvc5bpl.2048:17|
 :skolemid |58|
)))))
 :qid |RecoveryAddresscvc5bpl.2044:15|
 :skolemid |59|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@21 e@@7))
)))
(assert (forall ((v@@22 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@22)  (and (|$IsValid'u64'| (seq.len v@@22)) (forall ((i@@27 Int) ) (!  (=> (and (>= i@@27 0) (< i@@27 (seq.len v@@22))) (|$IsValid'address'| (seq.nth v@@22 i@@27)))
 :qid |RecoveryAddresscvc5bpl.2215:13|
 :skolemid |60|
))))
 :qid |RecoveryAddresscvc5bpl.2213:33|
 :skolemid |61|
 :pattern ( (|$IsValid'vec'address''| v@@22))
)))
(assert (forall ((v@@23 (Seq Int)) (e@@8 Int) ) (! (let ((i@@28 (|$IndexOfVec'address'| v@@23 e@@8)))
(ite  (not (exists ((i@@29 Int) ) (!  (and (and (|$IsValid'u64'| i@@29) (and (>= i@@29 0) (< i@@29 (seq.len v@@23)))) (= (seq.nth v@@23 i@@29) e@@8))
 :qid |RecoveryAddresscvc5bpl.2220:13|
 :skolemid |62|
))) (= i@@28 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@28) (and (>= i@@28 0) (< i@@28 (seq.len v@@23)))) (= (seq.nth v@@23 i@@28) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@28)) (not (= (seq.nth v@@23 j@@8) e@@8)))
 :qid |RecoveryAddresscvc5bpl.2228:17|
 :skolemid |63|
)))))
 :qid |RecoveryAddresscvc5bpl.2224:15|
 :skolemid |64|
 :pattern ( (|$IndexOfVec'address'| v@@23 e@@8))
)))
(assert (forall ((v@@24 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@24)  (and (|$IsValid'u64'| (seq.len v@@24)) (forall ((i@@30 Int) ) (!  (=> (and (>= i@@30 0) (< i@@30 (seq.len v@@24))) (|$IsValid'u8'| (seq.nth v@@24 i@@30)))
 :qid |RecoveryAddresscvc5bpl.2395:13|
 :skolemid |65|
))))
 :qid |RecoveryAddresscvc5bpl.2393:28|
 :skolemid |66|
 :pattern ( (|$IsValid'vec'u8''| v@@24))
)))
(assert (forall ((v@@25 (Seq Int)) (e@@9 Int) ) (! (let ((i@@31 (|$IndexOfVec'u8'| v@@25 e@@9)))
(ite  (not (exists ((i@@32 Int) ) (!  (and (and (|$IsValid'u64'| i@@32) (and (>= i@@32 0) (< i@@32 (seq.len v@@25)))) (= (seq.nth v@@25 i@@32) e@@9))
 :qid |RecoveryAddresscvc5bpl.2400:13|
 :skolemid |67|
))) (= i@@31 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@31) (and (>= i@@31 0) (< i@@31 (seq.len v@@25)))) (= (seq.nth v@@25 i@@31) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@9) (>= j@@9 0)) (< j@@9 i@@31)) (not (= (seq.nth v@@25 j@@9) e@@9)))
 :qid |RecoveryAddresscvc5bpl.2408:17|
 :skolemid |68|
)))))
 :qid |RecoveryAddresscvc5bpl.2404:15|
 :skolemid |69|
 :pattern ( (|$IndexOfVec'u8'| v@@25 e@@9))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |RecoveryAddresscvc5bpl.2581:15|
 :skolemid |70|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |RecoveryAddresscvc5bpl.2597:15|
 :skolemid |71|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |RecoveryAddresscvc5bpl.2664:15|
 :skolemid |72|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |RecoveryAddresscvc5bpl.2667:15|
 :skolemid |73|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v1@@1 Int) (v2@@1 Int) ) (! (= (= v1@@1 v2@@1) (= (|$1_BCS_serialize'address'| v1@@1) (|$1_BCS_serialize'address'| v2@@1)))
 :qid |RecoveryAddresscvc5bpl.2694:15|
 :skolemid |74|
 :pattern ( (|$1_BCS_serialize'address'| v1@@1) (|$1_BCS_serialize'address'| v2@@1))
)))
(assert (forall ((v@@26 Int) ) (! (let ((r@@0 (|$1_BCS_serialize'address'| v@@26)))
 (and (|$IsValid'vec'u8''| r@@0) (> (seq.len r@@0) 0)))
 :qid |RecoveryAddresscvc5bpl.2699:15|
 :skolemid |75|
 :pattern ( (|$1_BCS_serialize'address'| v@@26))
)))
(assert (forall ((v@@27 Int) ) (! (let ((r@@1 (|$1_BCS_serialize'address'| v@@27)))
(= (seq.len r@@1) $serialized_address_len))
 :qid |RecoveryAddresscvc5bpl.2713:15|
 :skolemid |76|
 :pattern ( (|$1_BCS_serialize'address'| v@@27))
)))
(assert (forall ((v1@@2 Int) (v2@@2 Int) ) (! (= (= v1@@2 v2@@2) (= (|$1_BCS_serialize'u64'| v1@@2) (|$1_BCS_serialize'u64'| v2@@2)))
 :qid |RecoveryAddresscvc5bpl.2726:15|
 :skolemid |77|
 :pattern ( (|$1_BCS_serialize'u64'| v1@@2) (|$1_BCS_serialize'u64'| v2@@2))
)))
(assert (forall ((v@@28 Int) ) (! (let ((r@@2 (|$1_BCS_serialize'u64'| v@@28)))
 (and (|$IsValid'vec'u8''| r@@2) (> (seq.len r@@2) 0)))
 :qid |RecoveryAddresscvc5bpl.2731:15|
 :skolemid |78|
 :pattern ( (|$1_BCS_serialize'u64'| v@@28))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_91859_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_91859| stream) 0) (forall ((v@@29 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_91859| stream) v@@29) 0)
 :qid |RecoveryAddresscvc5bpl.134:13|
 :skolemid |2|
))))
 :qid |RecoveryAddresscvc5bpl.2787:13|
 :skolemid |79|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |RecoveryAddresscvc5bpl.2828:80|
 :skolemid |81|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@3 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@3 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@3) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@3)))
 :qid |RecoveryAddresscvc5bpl.2834:15|
 :skolemid |82|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@3) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@3))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |RecoveryAddresscvc5bpl.2884:82|
 :skolemid |83|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@4 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@4 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@4 v2@@4) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@4) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@4)))
 :qid |RecoveryAddresscvc5bpl.2890:15|
 :skolemid |84|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@4) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@4))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |RecoveryAddresscvc5bpl.2940:80|
 :skolemid |85|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@5 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@5 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (= v1@@5 v2@@5) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@5) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@5)))
 :qid |RecoveryAddresscvc5bpl.2946:15|
 :skolemid |86|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@5) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@5))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |RecoveryAddresscvc5bpl.2996:79|
 :skolemid |87|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@6 T@$1_DiemAccount_AdminTransactionEvent) (v2@@6 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@6 v2@@6) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@6)))
 :qid |RecoveryAddresscvc5bpl.3002:15|
 :skolemid |88|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@6))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |RecoveryAddresscvc5bpl.3052:76|
 :skolemid |89|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@7 T@$1_DiemAccount_CreateAccountEvent) (v2@@7 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@7 v2@@7) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@7)))
 :qid |RecoveryAddresscvc5bpl.3058:15|
 :skolemid |90|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@7))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |RecoveryAddresscvc5bpl.3108:78|
 :skolemid |91|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@8 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@8 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (= v1@@8 v2@@8) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@8) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@8)))
 :qid |RecoveryAddresscvc5bpl.3114:15|
 :skolemid |92|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@8) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@8))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |RecoveryAddresscvc5bpl.3164:74|
 :skolemid |93|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@9 T@$1_DiemAccount_SentPaymentEvent) (v2@@9 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (= v1@@9 v2@@9) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@9) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@9)))
 :qid |RecoveryAddresscvc5bpl.3170:15|
 :skolemid |94|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@9) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@9))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |RecoveryAddresscvc5bpl.3220:69|
 :skolemid |95|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@10 T@$1_DiemBlock_NewBlockEvent) (v2@@10 T@$1_DiemBlock_NewBlockEvent) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@10) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@10)))
 :qid |RecoveryAddresscvc5bpl.3226:15|
 :skolemid |96|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@10) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@10))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |RecoveryAddresscvc5bpl.3276:70|
 :skolemid |97|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@11 T@$1_DiemConfig_NewEpochEvent) (v2@@11 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@11 v2@@11) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@11) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@11)))
 :qid |RecoveryAddresscvc5bpl.3282:15|
 :skolemid |98|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@11) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@11))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |RecoveryAddresscvc5bpl.3332:60|
 :skolemid |99|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@12 T@$1_Diem_BurnEvent) (v2@@12 T@$1_Diem_BurnEvent) ) (! (= (= v1@@12 v2@@12) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@12) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@12)))
 :qid |RecoveryAddresscvc5bpl.3338:15|
 :skolemid |100|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@12) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@12))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |RecoveryAddresscvc5bpl.3388:66|
 :skolemid |101|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@13 T@$1_Diem_CancelBurnEvent) (v2@@13 T@$1_Diem_CancelBurnEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@13) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@13)))
 :qid |RecoveryAddresscvc5bpl.3394:15|
 :skolemid |102|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@13) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@13))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |RecoveryAddresscvc5bpl.3444:60|
 :skolemid |103|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@14 T@$1_Diem_MintEvent) (v2@@14 T@$1_Diem_MintEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@14) (|$ToEventRep'$1_Diem_MintEvent'| v2@@14)))
 :qid |RecoveryAddresscvc5bpl.3450:15|
 :skolemid |104|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@14) (|$ToEventRep'$1_Diem_MintEvent'| v2@@14))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |RecoveryAddresscvc5bpl.3500:63|
 :skolemid |105|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@15 T@$1_Diem_PreburnEvent) (v2@@15 T@$1_Diem_PreburnEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@15) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@15)))
 :qid |RecoveryAddresscvc5bpl.3506:15|
 :skolemid |106|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@15) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@15))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |RecoveryAddresscvc5bpl.3556:79|
 :skolemid |107|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@16 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@16 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@16) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@16)))
 :qid |RecoveryAddresscvc5bpl.3562:15|
 :skolemid |108|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@16) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@16))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |RecoveryAddresscvc5bpl.3612:82|
 :skolemid |109|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@17 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@17 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@17) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@17)))
 :qid |RecoveryAddresscvc5bpl.3618:15|
 :skolemid |110|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@17) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@17))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |RecoveryAddresscvc5bpl.3668:88|
 :skolemid |111|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@18 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@18 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (= v1@@18 v2@@18) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@18) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@18)))
 :qid |RecoveryAddresscvc5bpl.3674:15|
 :skolemid |112|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@18) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@18))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |RecoveryAddresscvc5bpl.3724:72|
 :skolemid |113|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@19 T@$1_VASPDomain_VASPDomainEvent) (v2@@19 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (= v1@@19 v2@@19) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@19) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@19)))
 :qid |RecoveryAddresscvc5bpl.3730:15|
 :skolemid |114|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@19) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@19))
)))
(assert (forall ((s T@$signer) ) (!  (=> (|$IsValid'address'| (|$addr#$signer| s)) ($1_Signer_is_signer (|$addr#$signer| s)))
 :qid |RecoveryAddresscvc5bpl.3784:15|
 :skolemid |115|
)))
(assert (forall ((addr Int) ) (! true
 :qid |RecoveryAddresscvc5bpl.3793:15|
 :skolemid |116|
)))
(assert (forall ((s@@0 T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s@@0) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s@@0)))
 :qid |RecoveryAddresscvc5bpl.3823:61|
 :skolemid |117|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s@@0))
)))
(assert (forall ((s@@1 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@1) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@1)))
 :qid |RecoveryAddresscvc5bpl.4379:36|
 :skolemid |119|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@1))
)))
(assert (forall ((s@@2 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@2) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@2)))
 :qid |RecoveryAddresscvc5bpl.6473:71|
 :skolemid |174|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@3) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@3)))
 :qid |RecoveryAddresscvc5bpl.6542:46|
 :skolemid |175|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@4) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@4)))
 :qid |RecoveryAddresscvc5bpl.6555:64|
 :skolemid |176|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@5)))
 :qid |RecoveryAddresscvc5bpl.6568:75|
 :skolemid |177|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@5))
)))
(assert (forall ((s@@6 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@6) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@6)))
 :qid |RecoveryAddresscvc5bpl.6581:72|
 :skolemid |178|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@7)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@7)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@7))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@7))))
 :qid |RecoveryAddresscvc5bpl.6610:55|
 :skolemid |179|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@7))
)))
(assert (forall ((s@@8 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@8)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@8)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@8))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@8))))
 :qid |RecoveryAddresscvc5bpl.6632:46|
 :skolemid |180|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@8))
)))
(assert (forall ((s@@9 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@9)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@9)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@9))))
 :qid |RecoveryAddresscvc5bpl.6650:49|
 :skolemid |181|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@10) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@10)))
 :qid |RecoveryAddresscvc5bpl.6725:71|
 :skolemid |182|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@11) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@11)))
 :qid |RecoveryAddresscvc5bpl.6739:91|
 :skolemid |183|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@12) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@12)))
 :qid |RecoveryAddresscvc5bpl.6753:113|
 :skolemid |184|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@13)))
 :qid |RecoveryAddresscvc5bpl.6767:75|
 :skolemid |185|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@14)))
 :qid |RecoveryAddresscvc5bpl.6781:73|
 :skolemid |186|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@15)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@15)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@15))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@15))))
 :qid |RecoveryAddresscvc5bpl.6801:48|
 :skolemid |187|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@15))
)))
(assert (forall ((s@@16 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16) true)
 :qid |RecoveryAddresscvc5bpl.6817:57|
 :skolemid |188|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16))
)))
(assert (forall ((s@@17 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17) true)
 :qid |RecoveryAddresscvc5bpl.6831:83|
 :skolemid |189|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17))
)))
(assert (forall ((s@@18 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18) true)
 :qid |RecoveryAddresscvc5bpl.6845:103|
 :skolemid |190|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19) true)
 :qid |RecoveryAddresscvc5bpl.6859:125|
 :skolemid |191|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@20) true)
 :qid |RecoveryAddresscvc5bpl.6873:87|
 :skolemid |192|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@20))
)))
(assert (forall ((s@@21 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@21) true)
 :qid |RecoveryAddresscvc5bpl.6887:85|
 :skolemid |193|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@21))
)))
(assert (forall ((s@@22 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@22) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@22)))
 :qid |RecoveryAddresscvc5bpl.6901:48|
 :skolemid |194|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@22))
)))
(assert (forall ((s@@23 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@23)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@23)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@23))))
 :qid |RecoveryAddresscvc5bpl.6922:45|
 :skolemid |195|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@23))
)))
(assert (forall ((s@@24 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@24) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@24)))
 :qid |RecoveryAddresscvc5bpl.6936:51|
 :skolemid |196|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@24))
)))
(assert (forall ((s@@25 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@25)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@25)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@25))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@25))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@25))))
 :qid |RecoveryAddresscvc5bpl.6959:48|
 :skolemid |197|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@25))
)))
(assert (forall ((s@@26 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@26) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@26)))
 :qid |RecoveryAddresscvc5bpl.7270:49|
 :skolemid |198|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@26))
)))
(assert (forall ((s@@27 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@27) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@27)))
 :qid |RecoveryAddresscvc5bpl.7283:65|
 :skolemid |199|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@27))
)))
(assert (forall ((s@@28 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@28) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@28)))
 :qid |RecoveryAddresscvc5bpl.7822:45|
 :skolemid |200|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@29) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@29)))
 :qid |RecoveryAddresscvc5bpl.7835:45|
 :skolemid |201|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_Diem'#0'|) ) (! (= (|$IsValid'$1_Diem_Diem'#0''| s@@30) (|$IsValid'u64'| (|$value#$1_Diem_Diem'#0'| s@@30)))
 :qid |RecoveryAddresscvc5bpl.7848:37|
 :skolemid |202|
 :pattern ( (|$IsValid'$1_Diem_Diem'#0''| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@31) true)
 :qid |RecoveryAddresscvc5bpl.7861:55|
 :skolemid |203|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@32) true)
 :qid |RecoveryAddresscvc5bpl.7875:55|
 :skolemid |204|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@32))
)))
(assert (forall ((s@@33 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@33)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@33)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@33))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@33))))
 :qid |RecoveryAddresscvc5bpl.7895:38|
 :skolemid |205|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@33))
)))
(assert (forall ((s@@34 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@34)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@34)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@34))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@34))))
 :qid |RecoveryAddresscvc5bpl.7916:44|
 :skolemid |206|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@34))
)))
(assert (forall ((s@@35 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@35)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))))
 :qid |RecoveryAddresscvc5bpl.7967:53|
 :skolemid |207|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@35))
)))
(assert (forall ((s@@36 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@36)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))))
 :qid |RecoveryAddresscvc5bpl.8029:53|
 :skolemid |208|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@36))
)))
(assert (forall ((s@@37 |T@$1_Diem_CurrencyInfo'#0'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@37)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'#0'| s@@37)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| s@@37))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'#0'| s@@37))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| s@@37))))
 :qid |RecoveryAddresscvc5bpl.8091:45|
 :skolemid |209|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@37))
)))
(assert (forall ((s@@38 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@38) true)
 :qid |RecoveryAddresscvc5bpl.8117:55|
 :skolemid |210|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@38))
)))
(assert (forall ((s@@39 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@39) true)
 :qid |RecoveryAddresscvc5bpl.8131:55|
 :skolemid |211|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@39))
)))
(assert (forall ((s@@40 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@40)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@40)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@40))))
 :qid |RecoveryAddresscvc5bpl.8148:38|
 :skolemid |212|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@40))
)))
(assert (forall ((s@@41 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@41) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@41)))
 :qid |RecoveryAddresscvc5bpl.8162:48|
 :skolemid |213|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@41))
)))
(assert (forall ((s@@42 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@42) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@42)))
 :qid |RecoveryAddresscvc5bpl.8176:48|
 :skolemid |214|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@42))
)))
(assert (forall ((s@@43 |T@$1_Diem_Preburn'#0'|) ) (! (= (|$IsValid'$1_Diem_Preburn'#0''| s@@43) (|$IsValid'$1_Diem_Diem'#0''| (|$to_burn#$1_Diem_Preburn'#0'| s@@43)))
 :qid |RecoveryAddresscvc5bpl.8190:40|
 :skolemid |215|
 :pattern ( (|$IsValid'$1_Diem_Preburn'#0''| s@@43))
)))
(assert (forall ((s@@44 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@44)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@44)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@44))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@44))))
 :qid |RecoveryAddresscvc5bpl.8210:41|
 :skolemid |216|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@44))
)))
(assert (forall ((s@@45 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@45) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@45)))
 :qid |RecoveryAddresscvc5bpl.8225:53|
 :skolemid |217|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@45))
)))
(assert (forall ((s@@46 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@46) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@46)))
 :qid |RecoveryAddresscvc5bpl.8239:53|
 :skolemid |218|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@46))
)))
(assert (forall ((s@@47 |T@$1_Diem_PreburnQueue'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@47) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| (|$preburns#$1_Diem_PreburnQueue'#0'| s@@47)))
 :qid |RecoveryAddresscvc5bpl.8253:45|
 :skolemid |219|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@47))
)))
(assert (forall ((s@@48 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@48)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@48)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@48))))
 :qid |RecoveryAddresscvc5bpl.8270:60|
 :skolemid |220|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@48))
)))
(assert (forall ((s@@49 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@49)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@49)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@49))))
 :qid |RecoveryAddresscvc5bpl.8287:60|
 :skolemid |221|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@49))
)))
(assert (forall ((s@@50 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@50)  (and (|$IsValid'$1_Diem_Preburn'#0''| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| s@@50)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| s@@50))))
 :qid |RecoveryAddresscvc5bpl.8304:52|
 :skolemid |222|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@50))
)))
(assert (forall ((s@@51 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@51)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@51)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@51))))
 :qid |RecoveryAddresscvc5bpl.8321:57|
 :skolemid |223|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@51))
)))
(assert (forall ((s@@52 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@52) true)
 :qid |RecoveryAddresscvc5bpl.10522:68|
 :skolemid |224|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@52))
)))
(assert (forall ((s@@53 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@53)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@53)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@53))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@53))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@53))))
 :qid |RecoveryAddresscvc5bpl.10544:66|
 :skolemid |225|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@53))
)))
(assert (forall ((s@@54 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@54)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@54)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@54))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@54))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@54))))
 :qid |RecoveryAddresscvc5bpl.10570:66|
 :skolemid |226|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@54))
)))
(assert (forall ((s@@55 |T@$1_AccountLimits_Window'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@55)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| s@@55)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@55))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@55))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| s@@55))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| s@@55))))
 :qid |RecoveryAddresscvc5bpl.10599:56|
 :skolemid |227|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@55))
)))
(assert (forall ((s@@56 |T@$1_AccountLimits_Window'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@56)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| s@@56)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@56))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@56))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| s@@56))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| s@@56))))
 :qid |RecoveryAddresscvc5bpl.10629:56|
 :skolemid |228|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@56))
)))
(assert (forall ((s@@57 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@57) true)
 :qid |RecoveryAddresscvc5bpl.10963:31|
 :skolemid |229|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@57))
)))
(assert (forall ((s@@58 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@58) true)
 :qid |RecoveryAddresscvc5bpl.11307:31|
 :skolemid |230|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@58))
)))
(assert (forall ((s@@59 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@59)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@59)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@59))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@59))))
 :qid |RecoveryAddresscvc5bpl.11326:35|
 :skolemid |231|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@59))
)))
(assert (forall ((s@@60 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@60) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@60)))
 :qid |RecoveryAddresscvc5bpl.11747:45|
 :skolemid |232|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@60))
)))
(assert (forall ((s@@61 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@61)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@61))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@61))))
 :qid |RecoveryAddresscvc5bpl.11766:50|
 :skolemid |233|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@61))
)))
(assert (forall ((s@@62 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@62) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@62)))
 :qid |RecoveryAddresscvc5bpl.11781:52|
 :skolemid |234|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@62))
)))
(assert (forall ((s@@63 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@63) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@63)))
 :qid |RecoveryAddresscvc5bpl.11815:38|
 :skolemid |235|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@63))
)))
(assert (forall ((s@@64 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@64) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@64)))
 :qid |RecoveryAddresscvc5bpl.11829:39|
 :skolemid |236|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@64))
)))
(assert (forall ((s@@65 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@65)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@65)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@65))))
 :qid |RecoveryAddresscvc5bpl.11856:65|
 :skolemid |237|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@65))
)))
(assert (forall ((payer Int) (metadata (Seq Int)) (deposit_value Int) ) (! (let (($$res ($1_DualAttestation_spec_dual_attestation_message payer metadata deposit_value)))
(|$IsValid'vec'u8''| $$res))
 :qid |RecoveryAddresscvc5bpl.12264:15|
 :skolemid |238|
)))
(assert (forall ((s@@66 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@66)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@66)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@66))))
 :qid |RecoveryAddresscvc5bpl.12292:60|
 :skolemid |239|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@66))
)))
(assert (forall ((s@@67 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@67)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@67)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@67))))
 :qid |RecoveryAddresscvc5bpl.12309:66|
 :skolemid |240|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@67))
)))
(assert (forall ((s@@68 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@68)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@68)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@68))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@68))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@68))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@68))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@68))))
 :qid |RecoveryAddresscvc5bpl.12338:50|
 :skolemid |241|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@68))
)))
(assert (forall ((s@@69 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@69) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@69)))
 :qid |RecoveryAddresscvc5bpl.12357:45|
 :skolemid |242|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@69))
)))
(assert (forall ((s@@70 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@70)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@70)) true))
 :qid |RecoveryAddresscvc5bpl.18965:87|
 :skolemid |419|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@70))
)))
(assert (forall ((s@@71 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@71) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@71)))
 :qid |RecoveryAddresscvc5bpl.19177:47|
 :skolemid |420|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@71))
)))
(assert (forall ((s@@72 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@72)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@72)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@72))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@72))))
 :qid |RecoveryAddresscvc5bpl.19197:58|
 :skolemid |421|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@72))
)))
(assert (forall ((s@@73 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@73) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@73)))
 :qid |RecoveryAddresscvc5bpl.19212:39|
 :skolemid |422|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@73))
)))
(assert (forall ((s@@74 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@74)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@74)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@74))))
 :qid |RecoveryAddresscvc5bpl.19234:58|
 :skolemid |423|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@74))
)))
(assert (forall ((s@@75 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@75)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@75)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@75))))
 :qid |RecoveryAddresscvc5bpl.19251:58|
 :skolemid |424|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@75))
)))
(assert (forall ((s@@76 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@76) true)
 :qid |RecoveryAddresscvc5bpl.19266:51|
 :skolemid |425|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@76))
)))
(assert (forall ((s@@77 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@77)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@77)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@77))))
 :qid |RecoveryAddresscvc5bpl.19283:60|
 :skolemid |426|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@77))
)))
(assert (forall ((s@@78 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@78)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@78)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@78))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@78))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@78))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@78))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@78))))
 :qid |RecoveryAddresscvc5bpl.19581:47|
 :skolemid |427|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@78))
)))
(assert (forall ((s@@79 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@79)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@79)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@79))))
 :qid |RecoveryAddresscvc5bpl.19603:63|
 :skolemid |428|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@79))
)))
(assert (forall ((s@@80 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@80) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@80)))
 :qid |RecoveryAddresscvc5bpl.19618:57|
 :skolemid |429|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@80))
)))
(assert (forall ((s@@81 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@81) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@81)))
 :qid |RecoveryAddresscvc5bpl.19631:55|
 :skolemid |430|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@81))
)))
(assert (forall ((s@@82 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@82) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@82)))
 :qid |RecoveryAddresscvc5bpl.19645:55|
 :skolemid |431|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@82))
)))
(assert (forall ((s@@83 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@83)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@83)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@83))))
 :qid |RecoveryAddresscvc5bpl.19662:54|
 :skolemid |432|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@83))
)))
(assert (forall ((s@@84 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@84) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@84)))
 :qid |RecoveryAddresscvc5bpl.19676:55|
 :skolemid |433|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@84))
)))
(assert (forall ((s@@85 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@85) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@85)))
 :qid |RecoveryAddresscvc5bpl.19690:57|
 :skolemid |434|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@85))
)))
(assert (forall ((s@@86 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@86)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@86)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@86))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@86))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@86))))
 :qid |RecoveryAddresscvc5bpl.19712:56|
 :skolemid |435|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@86))
)))
(assert (forall ((s@@87 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@87)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@87)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@87))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@87))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@87))))
 :qid |RecoveryAddresscvc5bpl.19737:52|
 :skolemid |436|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@87))
)))
(assert (forall ((s@@88 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@88) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@88)))
 :qid |RecoveryAddresscvc5bpl.19753:54|
 :skolemid |437|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@88))
)))
(assert (forall ((s@@89 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@89)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@89)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@89))))
 :qid |RecoveryAddresscvc5bpl.20625:47|
 :skolemid |438|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@89))
)))
(assert (forall ((s@@90 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@90)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@90)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@90))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@90))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@90))))
 :qid |RecoveryAddresscvc5bpl.20649:47|
 :skolemid |439|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@90))
)))
(assert (forall ((s@@91 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@91) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@91)))
 :qid |RecoveryAddresscvc5bpl.20890:49|
 :skolemid |440|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@91))
)))
(assert (forall ((s@@92 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@92)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@92)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@92))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@92))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@92))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@92))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@92))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@92))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@92))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@92))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@92))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@92))))
 :qid |RecoveryAddresscvc5bpl.20933:49|
 :skolemid |441|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@92))
)))
(assert (forall ((s@@93 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@93)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@93)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@93))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@93))))
 :qid |RecoveryAddresscvc5bpl.20962:48|
 :skolemid |442|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@93))
)))
(assert (forall ((s@@94 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@94) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@94)))
 :qid |RecoveryAddresscvc5bpl.21257:47|
 :skolemid |443|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@94))
)))
(assert (forall ((v@@30 (Seq Int)) ) (! (let ((r@@3 (ReverseVec_13296 v@@30)))
 (and (= (seq.len r@@3) (seq.len v@@30)) (forall ((i@@33 Int) ) (!  (=> (and (>= i@@33 0) (< i@@33 (seq.len r@@3))) (= (seq.nth r@@3 i@@33) (seq.nth v@@30 (- (- (seq.len v@@30) i@@33) 1))))
 :qid |RecoveryAddresscvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@33))
))))
 :qid |RecoveryAddresscvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_13296 v@@30))
)))
(assert (forall ((v@@31 (Seq T@$1_ValidatorConfig_Config)) ) (! (let ((r@@4 (ReverseVec_83590 v@@31)))
 (and (= (seq.len r@@4) (seq.len v@@31)) (forall ((i@@34 Int) ) (!  (=> (and (>= i@@34 0) (< i@@34 (seq.len r@@4))) (= (seq.nth r@@4 i@@34) (seq.nth v@@31 (- (- (seq.len v@@31) i@@34) 1))))
 :qid |RecoveryAddresscvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@34))
))))
 :qid |RecoveryAddresscvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_83590 v@@31))
)))
(assert (forall ((v@@32 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (let ((r@@5 (ReverseVec_82408 v@@32)))
 (and (= (seq.len r@@5) (seq.len v@@32)) (forall ((i@@35 Int) ) (!  (=> (and (>= i@@35 0) (< i@@35 (seq.len r@@5))) (= (seq.nth r@@5 i@@35) (seq.nth v@@32 (- (- (seq.len v@@32) i@@35) 1))))
 :qid |RecoveryAddresscvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@35))
))))
 :qid |RecoveryAddresscvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_82408 v@@32))
)))
(assert (forall ((v@@33 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (let ((r@@6 (ReverseVec_82605 v@@33)))
 (and (= (seq.len r@@6) (seq.len v@@33)) (forall ((i@@36 Int) ) (!  (=> (and (>= i@@36 0) (< i@@36 (seq.len r@@6))) (= (seq.nth r@@6 i@@36) (seq.nth v@@33 (- (- (seq.len v@@33) i@@36) 1))))
 :qid |RecoveryAddresscvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@36))
))))
 :qid |RecoveryAddresscvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_82605 v@@33))
)))
(assert (forall ((v@@34 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (let ((r@@7 (ReverseVec_82802 v@@34)))
 (and (= (seq.len r@@7) (seq.len v@@34)) (forall ((i@@37 Int) ) (!  (=> (and (>= i@@37 0) (< i@@37 (seq.len r@@7))) (= (seq.nth r@@7 i@@37) (seq.nth v@@34 (- (- (seq.len v@@34) i@@37) 1))))
 :qid |RecoveryAddresscvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@7 i@@37))
))))
 :qid |RecoveryAddresscvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_82802 v@@34))
)))
(assert (forall ((v@@35 (Seq (Seq Int))) ) (! (let ((r@@8 (ReverseVec_83787 v@@35)))
 (and (= (seq.len r@@8) (seq.len v@@35)) (forall ((i@@38 Int) ) (!  (=> (and (>= i@@38 0) (< i@@38 (seq.len r@@8))) (= (seq.nth r@@8 i@@38) (seq.nth v@@35 (- (- (seq.len v@@35) i@@38) 1))))
 :qid |RecoveryAddresscvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@8 i@@38))
))))
 :qid |RecoveryAddresscvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_83787 v@@35))
)))
(assert (forall ((v@@36 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (let ((r@@9 (ReverseVec_83393 v@@36)))
 (and (= (seq.len r@@9) (seq.len v@@36)) (forall ((i@@39 Int) ) (!  (=> (and (>= i@@39 0) (< i@@39 (seq.len r@@9))) (= (seq.nth r@@9 i@@39) (seq.nth v@@36 (- (- (seq.len v@@36) i@@39) 1))))
 :qid |RecoveryAddresscvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@9 i@@39))
))))
 :qid |RecoveryAddresscvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_83393 v@@36))
)))
(assert (forall ((v@@37 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (let ((r@@10 (ReverseVec_83196 v@@37)))
 (and (= (seq.len r@@10) (seq.len v@@37)) (forall ((i@@40 Int) ) (!  (=> (and (>= i@@40 0) (< i@@40 (seq.len r@@10))) (= (seq.nth r@@10 i@@40) (seq.nth v@@37 (- (- (seq.len v@@37) i@@40) 1))))
 :qid |RecoveryAddresscvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@10 i@@40))
))))
 :qid |RecoveryAddresscvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_83196 v@@37))
)))
(assert (forall ((v@@38 (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) (! (let ((r@@11 (ReverseVec_82999 v@@38)))
 (and (= (seq.len r@@11) (seq.len v@@38)) (forall ((i@@41 Int) ) (!  (=> (and (>= i@@41 0) (< i@@41 (seq.len r@@11))) (= (seq.nth r@@11 i@@41) (seq.nth v@@38 (- (- (seq.len v@@38) i@@41) 1))))
 :qid |RecoveryAddresscvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@11 i@@41))
))))
 :qid |RecoveryAddresscvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_82999 v@@38))
)))
(assert (forall ((v@@39 (Seq |T@#0|)) ) (! (let ((r@@12 (ReverseVec_82211 v@@39)))
 (and (= (seq.len r@@12) (seq.len v@@39)) (forall ((i@@42 Int) ) (!  (=> (and (>= i@@42 0) (< i@@42 (seq.len r@@12))) (= (seq.nth r@@12 i@@42) (seq.nth v@@39 (- (- (seq.len v@@39) i@@42) 1))))
 :qid |RecoveryAddresscvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@12 i@@42))
))))
 :qid |RecoveryAddresscvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_82211 v@@39))
)))
(assert (forall ((|l#0| Bool) (i@@43 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@43) |l#0|)
 :qid |RecoveryAddresscvc5bpl.250:54|
 :skolemid |521|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@43))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_91859|) (|l#1| |T@[$1_Event_EventHandle]Multiset_91859|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_91859_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_91859| (|Select__T@[$1_Event_EventHandle]Multiset_91859_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_91859| (|Select__T@[$1_Event_EventHandle]Multiset_91859_| |l#1| handle@@0))))
(Multiset_91859 (|lambda#3| (|v#Multiset_91859| (|Select__T@[$1_Event_EventHandle]Multiset_91859_| |l#0@@0| handle@@0)) (|v#Multiset_91859| (|Select__T@[$1_Event_EventHandle]Multiset_91859_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |RecoveryAddresscvc5bpl.2797:13|
 :skolemid |522|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_91859_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@40 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@40) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@40) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@40)))
 :qid |RecoveryAddresscvc5bpl.129:29|
 :skolemid |523|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@40))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t24@0 () T@$Mutation_13443)
(declare-fun $t14@1 () T@$Mutation_123518)
(declare-fun $t24@1 () T@$Mutation_13443)
(declare-fun _$t2 () Int)
(declare-fun $t14@2 () T@$Mutation_123518)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_122999)
(declare-fun $1_DualAttestation_Limit_$memory () T@$Memory_124467)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0 () T@$Memory_122999)
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
(declare-fun $t14 () T@$Mutation_123518)
(declare-fun $t14@0 () T@$Mutation_123518)
(declare-fun $abort_code@0 () Int)
(declare-fun $t12 () Bool)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies () |T@[Int]Bool|)
(declare-fun $t11 () Int)
(declare-fun $t10 () Bool)
(declare-fun $es () T@$EventStore)
(declare-fun $t7 () T@$Mutation_123518)
(declare-fun $t24 () T@$Mutation_13443)
(push 1)
(set-info :boogie-vc-id $1_DiemTimestamp_update_global_time$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 299368) (let ((L5_correct  (=> (= $t24@0 ($Mutation_13443 (|l#$Mutation_123518| $t14@1) (seq.++ (|p#$Mutation_123518| $t14@1) (seq.unit 0)) (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|v#$Mutation_123518| $t14@1)))) (=> (and (and (= $t24@1 ($Mutation_13443 (|l#$Mutation_13443| $t24@0) (|p#$Mutation_13443| $t24@0) _$t2)) (= $t14@2 ($Mutation_123518 (|l#$Mutation_123518| $t14@1) (|p#$Mutation_123518| $t14@1) ($1_DiemTimestamp_CurrentTimeMicroseconds (|v#$Mutation_13443| $t24@1))))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)) (= $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0 ($Memory_122999 (|Store__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) (|a#$Global| (|l#$Mutation_123518| $t14@2)) true) (|Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) (|a#$Global| (|l#$Mutation_123518| $t14@2)) (|v#$Mutation_123518| $t14@2)))))) (and (=> (= (ControlFlow 0 215625) (- 0 299990)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)) (=> (= $t25 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816))) (and (=> (= (ControlFlow 0 215625) (- 0 300015)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 215625) (- 0 300025)) (not (not (= (|$addr#$signer| _$t0) 0)))) (=> (not (not (= (|$addr#$signer| _$t0) 0))) (and (=> (= (ControlFlow 0 215625) (- 0 300039)) (not (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2)))) (=> (not (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2))) (=> (= (ControlFlow 0 215625) (- 0 300063)) (= $t25 _$t2)))))))))))))))
(let ((anon25_Then_correct  (=> (and $t18@0 (= (ControlFlow 0 215683) 215625)) L5_correct)))
(let ((anon26_Then_correct  (=> (and inline$$Lt$0$dst@1 (= (ControlFlow 0 215483) 215625)) L5_correct)))
(let ((L8_correct  (and (=> (= (ControlFlow 0 215479) (- 0 300107)) (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (= (|$addr#$signer| _$t0) 0))) (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2)))) (=> (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (= (|$addr#$signer| _$t0) 0))) (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2))) (=> (= (ControlFlow 0 215479) (- 0 300144)) (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t11@0)) (and (not (= (|$addr#$signer| _$t0) 0)) (= 2 $t11@0))) (ite (= _$t1 0)  (not (= $t9 _$t2))  (and (>= $t9 _$t2) (= 7 $t11@0)))))))))
(let ((anon25_Else_correct  (=> (and (and (not $t18@0) (= $t20 $t20)) (and (= $t11@0 $t20) (= (ControlFlow 0 215679) 215479))) L8_correct)))
(let ((anon24_Then_correct  (=> $t17@0 (=> (and (= $t18@0 (= $t15@0 _$t2)) (|$IsValid'u64'| 2)) (=> (and (and (|$IsValid'u64'| $t20) (= $t20 7)) (and (= $t20 $t20) (= $t18@0 $t18@0))) (and (=> (= (ControlFlow 0 215663) 215683) anon25_Then_correct) (=> (= (ControlFlow 0 215663) 215679) anon25_Else_correct)))))))
(let ((anon26_Else_correct  (=> (and (and (not inline$$Lt$0$dst@1) (= $t23 $t23)) (and (= $t11@0 $t23) (= (ControlFlow 0 215363) 215479))) L8_correct)))
(let ((anon24_Else$1_correct  (=> (|$IsValid'u64'| 2) (=> (and (and (|$IsValid'u64'| $t23) (= $t23 7)) (and (= $t23 $t23) (= inline$$Lt$0$dst@1 inline$$Lt$0$dst@1))) (and (=> (= (ControlFlow 0 215347) 215483) anon26_Then_correct) (=> (= (ControlFlow 0 215347) 215363) anon26_Else_correct))))))
(let ((inline$$Lt$0$anon0_correct  (=> (and (= inline$$Lt$0$dst@1 (< $t15@0 _$t2)) (= (ControlFlow 0 215311) 215347)) anon24_Else$1_correct)))
(let ((anon24_Else_correct  (=> (and (not $t17@0) (= (ControlFlow 0 215317) 215311)) inline$$Lt$0$anon0_correct)))
(let ((anon23_Else_correct  (=> (not $abort_flag@0) (=> (and (= |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0| (|v#$Mutation_123518| $t14@1)) (= |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0| |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0|)) (=> (and (and (= $t15@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|v#$Mutation_123518| $t14@1))) (= $t15@0 $t15@0)) (and (|$IsValid'address'| 0) (= $t17@0 (= _$t1 0)))) (and (=> (= (ControlFlow 0 215265) 215663) anon24_Then_correct) (=> (= (ControlFlow 0 215265) 215317) anon24_Else_correct)))))))
(let ((anon23_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t11@0 $abort_code@1) (= (ControlFlow 0 215697) 215479))) L8_correct)))
(let ((anon22_Then$1_correct  (=> (= $t14@1 $t14) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 215749) 215697) anon23_Then_correct) (=> (= (ControlFlow 0 215749) 215265) anon23_Else_correct))))))
(let ((anon22_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (ControlFlow 0 215747) 215749)) anon22_Then$1_correct)))
(let ((anon22_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (=> (and (and (= $t14@0 ($Mutation_123518 ($Global 173345816) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t14@1 $t14@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 215219) 215697) anon23_Then_correct) (=> (= (ControlFlow 0 215219) 215265) anon23_Else_correct))))))
(let ((anon21_Else_correct  (=> (and (not $t12) (|$IsValid'address'| 173345816)) (and (=> (= (ControlFlow 0 215197) (- 0 299666)) (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816)) (=> (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816) (and (=> (= (ControlFlow 0 215197) 215747) anon22_Then_correct) (=> (= (ControlFlow 0 215197) 215219) anon22_Else_correct)))))))
(let ((anon21_Then_correct  (=> $t12 (=> (and (and (and (not (= (|$addr#$signer| _$t0) 0)) (= 2 $t11)) (= $t11 $t11)) (and (= $t11@0 $t11) (= (ControlFlow 0 215779) 215479))) L8_correct))))
(let ((anon20_Else_correct  (=> (and (not $t10) (= $t12  (not (= (|$addr#$signer| _$t0) 0)))) (and (=> (= (ControlFlow 0 215177) 215779) anon21_Then_correct) (=> (= (ControlFlow 0 215177) 215197) anon21_Else_correct)))))
(let ((anon20_Then_correct  (=> $t10 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t11)) (= $t11 $t11)) (and (= $t11@0 $t11) (= (ControlFlow 0 215805) 215479))) L8_correct))))
(let ((anon0$1_correct  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (and (|$IsValid'address'| (|$addr#$signer| _$t0)) (|$IsValid'address'| _$t1)) (=> (and (and (and (|$IsValid'u64'| _$t2) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc))
 :qid |RecoveryAddresscvc5bpl.4012:20|
 :skolemid |118|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0))
))) (and (= $t9 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816))) (and (and (= _$t0 _$t0) (= _$t1 _$t1)) (and (= _$t2 _$t2) (= $t10  (not (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (=> (= (ControlFlow 0 215155) 215805) anon20_Then_correct) (=> (= (ControlFlow 0 215155) 215177) anon20_Else_correct)))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_91859_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_91859| stream@@0) 0) (forall ((v@@41 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_91859| stream@@0) v@@41) 0)
 :qid |RecoveryAddresscvc5bpl.134:13|
 :skolemid |2|
))))
 :qid |RecoveryAddresscvc5bpl.2787:13|
 :skolemid |79|
))) (= (ControlFlow 0 215043) 215155)) anon0$1_correct)))
(let ((anon0_correct  (=> (and (and (= (seq.len (|p#$Mutation_123518| $t7)) 0) (= (seq.len (|p#$Mutation_123518| $t14)) 0)) (and (= (seq.len (|p#$Mutation_13443| $t24)) 0) (= (ControlFlow 0 215053) 215043))) inline$$InitEventStore$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 299368) 215053) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun _$t0@@0 () T@$signer)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_124848)
(declare-fun $t2 () Int)
(declare-fun $t6 () Bool)
(declare-fun $t3 () Bool)
(declare-fun $t1 () Bool)
(declare-fun $1_Roles_RoleId_$memory@2 () T@$Memory_124848)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun |$temp_0'bool'@0| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1 () T@$Memory_124848)
(declare-fun $1_Roles_RoleId_$memory@0 () T@$Memory_124848)
(declare-fun |Store__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int T@$1_Roles_RoleId) |T@[Int]$1_Roles_RoleId|)
(assert (forall ( ( ?x0 |T@[Int]$1_Roles_RoleId|) ( ?x1 Int) ( ?x2 T@$1_Roles_RoleId)) (! (= (|Select__T@[Int]$1_Roles_RoleId_| (|Store__T@[Int]$1_Roles_RoleId_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Roles_RoleId|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_Roles_RoleId)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Roles_RoleId_| (|Store__T@[Int]$1_Roles_RoleId_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Roles_RoleId_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_Roles_RoleId'@0| () T@$1_Roles_RoleId)
(declare-fun $t5 () Int)
(declare-fun $1_Roles_RoleId_$modifies () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_Roles_grant_diem_root_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 300405) (let ((L2_correct  (and (=> (= (ControlFlow 0 216713) (- 0 301151)) (or (or (or (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (= (|$addr#$signer| _$t0@@0) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0))) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (or (or (or (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (= (|$addr#$signer| _$t0@@0) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0))) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (= (ControlFlow 0 216713) (- 0 301182)) (or (or (or (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t2)) (and (not (= (|$addr#$signer| _$t0@@0) 173345816)) (= 2 $t2))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0)) (= 6 $t2))) (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t2))))))))
(let ((anon13_Then_correct  (=> $t6 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0)) (= 6 $t2)) (and (= $t2 $t2) (= (ControlFlow 0 216601) 216713))) L2_correct))))
(let ((anon12_Then_correct  (=> $t3 (=> (and (and (not (= (|$addr#$signer| _$t0@@0) 173345816)) (= 2 $t2)) (and (= $t2 $t2) (= (ControlFlow 0 216743) 216713))) L2_correct))))
(let ((anon11_Then_correct  (=> $t1 (=> (and (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t2)) (and (= $t2 $t2) (= (ControlFlow 0 216769) 216713))) L2_correct))))
(let ((anon9_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2) (|$addr#$signer| _$t0@@0)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2) (|$addr#$signer| _$t0@@0))) 0)) (and (=> (= (ControlFlow 0 216559) (- 0 300797)) (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 216559) (- 0 300807)) (not (not (= (|$addr#$signer| _$t0@@0) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@0) 173345816))) (and (=> (= (ControlFlow 0 216559) (- 0 300821)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0))) (and (=> (= (ControlFlow 0 216559) (- 0 300832)) (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 216559) (- 0 300842)) (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2) (|$addr#$signer| _$t0@@0))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2) (|$addr#$signer| _$t0@@0)) (and (=> (= (ControlFlow 0 216559) (- 0 300851)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2) (|$addr#$signer| _$t0@@0))) 0)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2) (|$addr#$signer| _$t0@@0))) 0) (and (=> (= (ControlFlow 0 216559) (- 0 300866)) (forall ((addr@@0 Int) ) (!  (=> (|$IsValid'address'| addr@@0) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2) addr@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2) addr@@0)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr@@0)) 1))))
 :qid |RecoveryAddresscvc5bpl.4605:15|
 :skolemid |122|
))) (=> (forall ((addr@@1 Int) ) (!  (=> (|$IsValid'address'| addr@@1) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2) addr@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2) addr@@1)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr@@1)) 1))))
 :qid |RecoveryAddresscvc5bpl.4605:15|
 :skolemid |122|
)) (and (=> (= (ControlFlow 0 216559) (- 0 300913)) (forall ((addr@@2 Int) ) (!  (=> (|$IsValid'address'| addr@@2) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2) addr@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2) addr@@2)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr@@2)) 3))))
 :qid |RecoveryAddresscvc5bpl.4609:15|
 :skolemid |123|
))) (=> (forall ((addr@@3 Int) ) (!  (=> (|$IsValid'address'| addr@@3) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2) addr@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2) addr@@3)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr@@3)) 3))))
 :qid |RecoveryAddresscvc5bpl.4609:15|
 :skolemid |123|
)) (and (=> (= (ControlFlow 0 216559) (- 0 300960)) (forall ((addr@@4 Int) ) (!  (=> (|$IsValid'address'| addr@@4) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2) addr@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2) addr@@4)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr@@4)) 4))))
 :qid |RecoveryAddresscvc5bpl.4613:15|
 :skolemid |124|
))) (=> (forall ((addr@@5 Int) ) (!  (=> (|$IsValid'address'| addr@@5) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2) addr@@5)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr@@5)) 4))))
 :qid |RecoveryAddresscvc5bpl.4613:15|
 :skolemid |124|
)) (and (=> (= (ControlFlow 0 216559) (- 0 301007)) (forall ((addr@@6 Int) ) (!  (=> (|$IsValid'address'| addr@@6) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2) addr@@6)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr@@6)) 2))))
 :qid |RecoveryAddresscvc5bpl.4617:15|
 :skolemid |125|
))) (=> (forall ((addr@@7 Int) ) (!  (=> (|$IsValid'address'| addr@@7) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2) addr@@7)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr@@7)) 2))))
 :qid |RecoveryAddresscvc5bpl.4617:15|
 :skolemid |125|
)) (and (=> (= (ControlFlow 0 216559) (- 0 301054)) (forall ((addr@@8 Int) ) (!  (=> (|$IsValid'address'| addr@@8) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2) addr@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2) addr@@8)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr@@8)) 5))))
 :qid |RecoveryAddresscvc5bpl.4621:15|
 :skolemid |126|
))) (=> (forall ((addr@@9 Int) ) (!  (=> (|$IsValid'address'| addr@@9) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2) addr@@9)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr@@9)) 5))))
 :qid |RecoveryAddresscvc5bpl.4621:15|
 :skolemid |126|
)) (=> (= (ControlFlow 0 216559) (- 0 301101)) (forall ((addr@@10 Int) ) (!  (=> (|$IsValid'address'| addr@@10) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2) addr@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2) addr@@10)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr@@10)) 6))))
 :qid |RecoveryAddresscvc5bpl.4625:15|
 :skolemid |127|
))))))))))))))))))))))))))))
(let ((anon14_Else_correct  (=> (and (and (not |$temp_0'bool'@0|) (= $1_Roles_RoleId_$memory@1 ($Memory_124848 (|Store__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0) false) (|contents#$Memory_124848| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2 $1_Roles_RoleId_$memory@1) (= (ControlFlow 0 216153) 216559))) anon9_correct)))
(let ((anon14_Then_correct  (=> (and (and |$temp_0'bool'@0| (= $1_Roles_RoleId_$memory@0 ($Memory_124848 (|Store__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0) |$temp_0'$1_Roles_RoleId'@0|)))) (and (= $1_Roles_RoleId_$memory@2 $1_Roles_RoleId_$memory@0) (= (ControlFlow 0 216573) 216559))) anon9_correct)))
(let ((anon13_Else_correct  (=> (not $t6) (and (=> (= (ControlFlow 0 216139) 216573) anon14_Then_correct) (=> (= (ControlFlow 0 216139) 216153) anon14_Else_correct)))))
(let ((anon12_Else_correct  (=> (not $t3) (=> (and (|$IsValid'u64'| 0) (= $t5 (|$addr#$signer| _$t0@@0))) (and (=> (= (ControlFlow 0 216133) (- 0 300647)) (=> (= 0 0) (= $t5 173345816))) (=> (=> (= 0 0) (= $t5 173345816)) (and (=> (= (ControlFlow 0 216133) (- 0 300663)) (=> (= 0 1) (= $t5 186537453))) (=> (=> (= 0 1) (= $t5 186537453)) (and (=> (= (ControlFlow 0 216133) (- 0 300679)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies (|$addr#$signer| _$t0@@0))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies (|$addr#$signer| _$t0@@0)) (=> (= $t6 (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0))) (and (=> (= (ControlFlow 0 216133) 216601) anon13_Then_correct) (=> (= (ControlFlow 0 216133) 216139) anon13_Else_correct)))))))))))))
(let ((anon11_Else_correct  (=> (and (not $t1) (= $t3  (not (= (|$addr#$signer| _$t0@@0) 173345816)))) (and (=> (= (ControlFlow 0 216055) 216743) anon12_Then_correct) (=> (= (ControlFlow 0 216055) 216133) anon12_Else_correct)))))
(let ((anon0$1_correct@@0  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (and (|$IsValid'address'| (|$addr#$signer| _$t0@@0)) (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@0)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@0))
 :qid |RecoveryAddresscvc5bpl.4419:20|
 :skolemid |120|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@0))
))) (=> (and (and (forall (($a_0@@1 Int) ) (! (let (($rsc@@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $a_0@@1)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@1))
 :qid |RecoveryAddresscvc5bpl.4423:20|
 :skolemid |121|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $a_0@@1))
)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies (|$addr#$signer| _$t0@@0))) (and (= _$t0@@0 _$t0@@0) (= $t1  (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (=> (= (ControlFlow 0 216033) 216769) anon11_Then_correct) (=> (= (ControlFlow 0 216033) 216055) anon11_Else_correct)))))))
(let ((inline$$InitEventStore$0$anon0_correct@@0  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@2 T@$1_Event_EventHandle) ) (! (let ((stream@@1 (|Select__T@[$1_Event_EventHandle]Multiset_91859_| (|streams#$EventStore| $es) handle@@2)))
 (and (= (|l#Multiset_91859| stream@@1) 0) (forall ((v@@42 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_91859| stream@@1) v@@42) 0)
 :qid |RecoveryAddresscvc5bpl.134:13|
 :skolemid |2|
))))
 :qid |RecoveryAddresscvc5bpl.2787:13|
 :skolemid |79|
))) (= (ControlFlow 0 215925) 216033)) anon0$1_correct@@0)))
(let ((anon0_correct@@0  (=> (= (ControlFlow 0 300405) 215925) inline$$InitEventStore$0$anon0_correct@@0)))
anon0_correct@@0))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@0 () Bool)
(declare-fun $1_DualAttestation_Credential_$memory () T@$Memory_126892)
(declare-fun $1_Roles_RoleId_$memory@1@@0 () T@$Memory_124848)
(declare-fun _$t0@@1 () T@$signer)
(declare-fun _$t1@@0 () Int)
(declare-fun $t10@0 () Int)
(declare-fun $abort_code@1@@0 () Int)
(declare-fun $1_Roles_RoleId_$memory@0@@0 () T@$Memory_124848)
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
 (=> (= (ControlFlow 0 0) 301260) (let ((anon12_Else_correct@@0  (=> (not $abort_flag@0@@0) (and (=> (= (ControlFlow 0 217319) (- 0 301685)) (forall ((addr1 Int) ) (!  (=> (|$IsValid'address'| addr1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@1@@0) addr1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@1@@0) addr1)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@1@@0) addr1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@1@@0) addr1)) 2)))))
 :qid |RecoveryAddresscvc5bpl.4810:15|
 :skolemid |130|
))) (=> (forall ((addr1@@0 Int) ) (!  (=> (|$IsValid'address'| addr1@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@0) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@1@@0) addr1@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@1@@0) addr1@@0)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@1@@0) addr1@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@1@@0) addr1@@0)) 2)))))
 :qid |RecoveryAddresscvc5bpl.4810:15|
 :skolemid |130|
)) (and (=> (= (ControlFlow 0 217319) (- 0 301720)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1))) (and (=> (= (ControlFlow 0 217319) (- 0 301731)) (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@1@@0) (|$addr#$signer| _$t0@@1))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@1@@0) (|$addr#$signer| _$t0@@1)) (=> (= (ControlFlow 0 217319) (- 0 301740)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@1@@0) (|$addr#$signer| _$t0@@1))) _$t1@@0)))))))))))
(let ((L3_correct  (and (=> (= (ControlFlow 0 217165) (- 0 301655)) (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1)) (=> (= (ControlFlow 0 217165) (- 0 301661)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1)) (= 6 $t10@0)))))))
(let ((anon12_Then_correct@@0  (=> (and (and $abort_flag@0@@0 (= $abort_code@1@@0 $abort_code@1@@0)) (and (= $t10@0 $abort_code@1@@0) (= (ControlFlow 0 217333) 217165))) L3_correct)))
(let ((anon11_Then$1_correct  (=> (= $1_Roles_RoleId_$memory@1@@0 $1_Roles_RoleId_$memory) (=> (and (= $abort_flag@0@@0 true) (= $abort_code@1@@0 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 217385) 217333) anon12_Then_correct@@0) (=> (= (ControlFlow 0 217385) 217319) anon12_Else_correct@@0))))))
(let ((anon11_Then_correct@@0  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1)) (= (ControlFlow 0 217383) 217385)) anon11_Then$1_correct)))
(let ((anon11_Else_correct@@0  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1))) (=> (and (and (= $1_Roles_RoleId_$memory@0@@0 ($Memory_124848 (|Store__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1) $t11@0@@0))) (= $1_Roles_RoleId_$memory@1@@0 $1_Roles_RoleId_$memory@0@@0)) (and (= $abort_flag@0@@0 false) (= $abort_code@1@@0 $abort_code@0@@0))) (and (=> (= (ControlFlow 0 217238) 217333) anon12_Then_correct@@0) (=> (= (ControlFlow 0 217238) 217319) anon12_Else_correct@@0))))))
(let ((anon10_Then_correct  (=> (and inline$$Not$0$dst@1 (= $t11@0@@0 ($1_Roles_RoleId _$t1@@0))) (and (=> (= (ControlFlow 0 217216) (- 0 301504)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@0 (|$addr#$signer| _$t0@@1))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@0 (|$addr#$signer| _$t0@@1)) (=> (forall ((addr1@@1 Int) ) (!  (=> (|$IsValid'address'| addr1@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@1) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@1)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@1)) 2)))))
 :qid |RecoveryAddresscvc5bpl.4790:20|
 :skolemid |129|
)) (and (=> (= (ControlFlow 0 217216) 217383) anon11_Then_correct@@0) (=> (= (ControlFlow 0 217216) 217238) anon11_Else_correct@@0))))))))
(let ((anon10_Else_correct  (=> (and (and (not inline$$Not$0$dst@1) (= $t9@@0 $t9@@0)) (and (= $t10@0 $t9@@0) (= (ControlFlow 0 217133) 217165))) L3_correct)))
(let ((anon0$2_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| $t9@@0) (= $t9@@0 6)) (and (= $t9@@0 $t9@@0) (= inline$$Not$0$dst@1 inline$$Not$0$dst@1))) (and (=> (= (ControlFlow 0 217117) 217216) anon10_Then_correct) (=> (= (ControlFlow 0 217117) 217133) anon10_Else_correct))))))
(let ((inline$$Not$0$anon0_correct  (=> (and (= inline$$Not$0$dst@1  (not $t6@0)) (= (ControlFlow 0 217081) 217117)) anon0$2_correct)))
(let ((anon0$1_correct@@1  (=> (|$IsValid'address'| (|$addr#$signer| _$t0@@1)) (=> (and (and (|$IsValid'u64'| _$t1@@0) (forall (($a_0@@2 Int) ) (! (let (($rsc@@2 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $a_0@@2)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@2))
 :qid |RecoveryAddresscvc5bpl.4686:20|
 :skolemid |128|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $a_0@@2))
))) (and (= $t4 (|$addr#$signer| _$t0@@1)) (=> (= _$t1@@0 0) (= $t4 173345816)))) (=> (and (and (and (=> (= _$t1@@0 1) (= $t4 186537453)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@0 (|$addr#$signer| _$t0@@1))) (and (= _$t0@@1 _$t0@@1) (= _$t1@@0 _$t1@@0))) (and (and (|$IsValid'address'| $t5@@0) (= $t5@@0 (|$addr#$signer| _$t0@@1))) (and (= $t6@0 (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t5@@0)) (= (ControlFlow 0 217087) 217081)))) inline$$Not$0$anon0_correct)))))
(let ((inline$$InitEventStore$0$anon0_correct@@1  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@3 T@$1_Event_EventHandle) ) (! (let ((stream@@2 (|Select__T@[$1_Event_EventHandle]Multiset_91859_| (|streams#$EventStore| $es) handle@@3)))
 (and (= (|l#Multiset_91859| stream@@2) 0) (forall ((v@@43 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_91859| stream@@2) v@@43) 0)
 :qid |RecoveryAddresscvc5bpl.134:13|
 :skolemid |2|
))))
 :qid |RecoveryAddresscvc5bpl.2787:13|
 :skolemid |79|
))) (= (ControlFlow 0 216919) 217087)) anon0$1_correct@@1)))
(let ((anon0_correct@@1  (=> (= (ControlFlow 0 301260) 216919) inline$$InitEventStore$0$anon0_correct@@1)))
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
(declare-fun $1_Roles_RoleId_$memory@2@@0 () T@$Memory_124848)
(declare-fun |$temp_0'bool'@0@@0| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@1 () T@$Memory_124848)
(declare-fun $1_Roles_RoleId_$memory@0@@1 () T@$Memory_124848)
(declare-fun |$temp_0'$1_Roles_RoleId'@0@@0| () T@$1_Roles_RoleId)
(declare-fun $t9@@1 () Int)
(declare-fun $1_Roles_RoleId_$modifies@@1 () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_Roles_grant_treasury_compliance_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 301760) (let ((L2_correct@@0  (and (=> (= (ControlFlow 0 218514) (- 0 302733)) (or (or (or (or (or (or (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (= (|$addr#$signer| _$t0@@2) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t2@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t2@@0)) 0))) (not (= (|$addr#$signer| _$t1@@1) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@2))) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (or (or (or (or (or (or (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (= (|$addr#$signer| _$t0@@2) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t2@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t2@@0)) 0))) (not (= (|$addr#$signer| _$t1@@1) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@2))) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (= (ControlFlow 0 218514) (- 0 302799)) (or (or (or (or (or (or (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t4@@0)) (and (not (= (|$addr#$signer| _$t0@@2) 186537453)) (= 2 $t4@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t2@@0)) (= 5 $t4@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t2@@0)) 0)) (= 3 $t4@@0))) (and (not (= (|$addr#$signer| _$t1@@1) 173345816)) (= 2 $t4@@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@2)) (= 6 $t4@@0))) (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t4@@0))))))))
(let ((anon16_Then_correct  (=> $t10@@0 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@2)) (= 6 $t4@@0)) (and (= $t4@@0 $t4@@0) (= (ControlFlow 0 218302) 218514))) L2_correct@@0))))
(let ((anon15_Then_correct  (=> (and (and $t7@@0 (or (or (or (and (not (= (|$addr#$signer| _$t1@@1) 173345816)) (= 2 $t4@@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t6@@0)) (= 5 $t4@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t6@@0)) 0)) (= 3 $t4@@0))) (and (not (= (|$addr#$signer| _$t1@@1) 173345816)) (= 2 $t4@@0)))) (and (= $t4@@0 $t4@@0) (= (ControlFlow 0 218606) 218514))) L2_correct@@0)))
(let ((anon14_Then_correct@@0  (=> $t5@@1 (=> (and (and (not (= (|$addr#$signer| _$t0@@2) 186537453)) (= 2 $t4@@0)) (and (= $t4@@0 $t4@@0) (= (ControlFlow 0 218636) 218514))) L2_correct@@0))))
(let ((anon13_Then_correct@@0  (=> $t3@@0 (=> (and (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t4@@0)) (and (= $t4@@0 $t4@@0) (= (ControlFlow 0 218662) 218514))) L2_correct@@0))))
(let ((anon11_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@0) (|$addr#$signer| _$t0@@2)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@0) (|$addr#$signer| _$t0@@2))) 1)) (and (=> (= (ControlFlow 0 218260) (- 0 302335)) (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 218260) (- 0 302345)) (not (not (= (|$addr#$signer| _$t0@@2) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t0@@2) 186537453))) (and (=> (= (ControlFlow 0 218260) (- 0 302359)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t2@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t2@@0))) (and (=> (= (ControlFlow 0 218260) (- 0 302371)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t2@@0)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t2@@0)) 0))) (and (=> (= (ControlFlow 0 218260) (- 0 302389)) (not (not (= (|$addr#$signer| _$t1@@1) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t1@@1) 173345816))) (and (=> (= (ControlFlow 0 218260) (- 0 302403)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@2)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@2))) (and (=> (= (ControlFlow 0 218260) (- 0 302414)) (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 218260) (- 0 302424)) (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@0) (|$addr#$signer| _$t0@@2))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@0) (|$addr#$signer| _$t0@@2)) (and (=> (= (ControlFlow 0 218260) (- 0 302433)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@0) (|$addr#$signer| _$t0@@2))) 1)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@0) (|$addr#$signer| _$t0@@2))) 1) (and (=> (= (ControlFlow 0 218260) (- 0 302448)) (forall ((addr@@11 Int) ) (!  (=> (|$IsValid'address'| addr@@11) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@0) addr@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@0) addr@@11)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr@@11)) 0))))
 :qid |RecoveryAddresscvc5bpl.5137:15|
 :skolemid |133|
))) (=> (forall ((addr@@12 Int) ) (!  (=> (|$IsValid'address'| addr@@12) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@0) addr@@12) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@0) addr@@12)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr@@12) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr@@12)) 0))))
 :qid |RecoveryAddresscvc5bpl.5137:15|
 :skolemid |133|
)) (and (=> (= (ControlFlow 0 218260) (- 0 302495)) (forall ((addr@@13 Int) ) (!  (=> (|$IsValid'address'| addr@@13) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@0) addr@@13) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@0) addr@@13)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr@@13) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr@@13)) 3))))
 :qid |RecoveryAddresscvc5bpl.5141:15|
 :skolemid |134|
))) (=> (forall ((addr@@14 Int) ) (!  (=> (|$IsValid'address'| addr@@14) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@0) addr@@14) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@0) addr@@14)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr@@14) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr@@14)) 3))))
 :qid |RecoveryAddresscvc5bpl.5141:15|
 :skolemid |134|
)) (and (=> (= (ControlFlow 0 218260) (- 0 302542)) (forall ((addr@@15 Int) ) (!  (=> (|$IsValid'address'| addr@@15) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@0) addr@@15) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@0) addr@@15)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr@@15) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr@@15)) 4))))
 :qid |RecoveryAddresscvc5bpl.5145:15|
 :skolemid |135|
))) (=> (forall ((addr@@16 Int) ) (!  (=> (|$IsValid'address'| addr@@16) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@0) addr@@16) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@0) addr@@16)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr@@16) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr@@16)) 4))))
 :qid |RecoveryAddresscvc5bpl.5145:15|
 :skolemid |135|
)) (and (=> (= (ControlFlow 0 218260) (- 0 302589)) (forall ((addr@@17 Int) ) (!  (=> (|$IsValid'address'| addr@@17) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@0) addr@@17) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@0) addr@@17)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr@@17) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr@@17)) 2))))
 :qid |RecoveryAddresscvc5bpl.5149:15|
 :skolemid |136|
))) (=> (forall ((addr@@18 Int) ) (!  (=> (|$IsValid'address'| addr@@18) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@0) addr@@18) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@0) addr@@18)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr@@18) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr@@18)) 2))))
 :qid |RecoveryAddresscvc5bpl.5149:15|
 :skolemid |136|
)) (and (=> (= (ControlFlow 0 218260) (- 0 302636)) (forall ((addr@@19 Int) ) (!  (=> (|$IsValid'address'| addr@@19) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@0) addr@@19) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@0) addr@@19)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr@@19) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr@@19)) 5))))
 :qid |RecoveryAddresscvc5bpl.5153:15|
 :skolemid |137|
))) (=> (forall ((addr@@20 Int) ) (!  (=> (|$IsValid'address'| addr@@20) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@0) addr@@20) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@0) addr@@20)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr@@20) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr@@20)) 5))))
 :qid |RecoveryAddresscvc5bpl.5153:15|
 :skolemid |137|
)) (=> (= (ControlFlow 0 218260) (- 0 302683)) (forall ((addr@@21 Int) ) (!  (=> (|$IsValid'address'| addr@@21) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@0) addr@@21) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@0) addr@@21)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr@@21) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr@@21)) 6))))
 :qid |RecoveryAddresscvc5bpl.5157:15|
 :skolemid |138|
))))))))))))))))))))))))))))))))))
(let ((anon17_Else_correct  (=> (and (and (not |$temp_0'bool'@0@@0|) (= $1_Roles_RoleId_$memory@1@@1 ($Memory_124848 (|Store__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@2) false) (|contents#$Memory_124848| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2@@0 $1_Roles_RoleId_$memory@1@@1) (= (ControlFlow 0 217810) 218260))) anon11_correct)))
(let ((anon17_Then_correct  (=> (and (and |$temp_0'bool'@0@@0| (= $1_Roles_RoleId_$memory@0@@1 ($Memory_124848 (|Store__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@2) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@2) |$temp_0'$1_Roles_RoleId'@0@@0|)))) (and (= $1_Roles_RoleId_$memory@2@@0 $1_Roles_RoleId_$memory@0@@1) (= (ControlFlow 0 218274) 218260))) anon11_correct)))
(let ((anon16_Else_correct  (=> (not $t10@@0) (and (=> (= (ControlFlow 0 217796) 218274) anon17_Then_correct) (=> (= (ControlFlow 0 217796) 217810) anon17_Else_correct)))))
(let ((anon15_Else_correct  (=> (not $t7@@0) (=> (and (|$IsValid'u64'| 1) (= $t9@@1 (|$addr#$signer| _$t0@@2))) (and (=> (= (ControlFlow 0 217790) (- 0 302185)) (=> (= 1 0) (= $t9@@1 173345816))) (=> (=> (= 1 0) (= $t9@@1 173345816)) (and (=> (= (ControlFlow 0 217790) (- 0 302201)) (=> (= 1 1) (= $t9@@1 186537453))) (=> (=> (= 1 1) (= $t9@@1 186537453)) (and (=> (= (ControlFlow 0 217790) (- 0 302217)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@1 (|$addr#$signer| _$t0@@2))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@1 (|$addr#$signer| _$t0@@2)) (=> (= $t10@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@2))) (and (=> (= (ControlFlow 0 217790) 218302) anon16_Then_correct) (=> (= (ControlFlow 0 217790) 217796) anon16_Else_correct)))))))))))))
(let ((anon14_Else_correct@@0  (=> (not $t5@@1) (=> (and (= $t6@@0 (|$addr#$signer| _$t1@@1)) (= $t7@@0  (or (or (or (not (= (|$addr#$signer| _$t1@@1) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t6@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t6@@0)) 0))) (not (= (|$addr#$signer| _$t1@@1) 173345816))))) (and (=> (= (ControlFlow 0 217712) 218606) anon15_Then_correct) (=> (= (ControlFlow 0 217712) 217790) anon15_Else_correct))))))
(let ((anon13_Else_correct@@0  (=> (and (not $t3@@0) (= $t5@@1  (not (= (|$addr#$signer| _$t0@@2) 186537453)))) (and (=> (= (ControlFlow 0 217640) 218636) anon14_Then_correct@@0) (=> (= (ControlFlow 0 217640) 217712) anon14_Else_correct@@0)))))
(let ((anon0$1_correct@@2  (=> (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (|$IsValid'address'| (|$addr#$signer| _$t0@@2))) (=> (and (and (and (|$IsValid'address'| (|$addr#$signer| _$t1@@1)) (forall (($a_0@@3 Int) ) (! (let (($rsc@@3 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@3)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@3))
 :qid |RecoveryAddresscvc5bpl.4894:20|
 :skolemid |131|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@3))
))) (and (forall (($a_0@@4 Int) ) (! (let (($rsc@@4 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $a_0@@4)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@4))
 :qid |RecoveryAddresscvc5bpl.4898:20|
 :skolemid |132|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $a_0@@4))
)) (= $t2@@0 (|$addr#$signer| _$t1@@1)))) (and (and (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@1 (|$addr#$signer| _$t0@@2)) (= _$t0@@2 _$t0@@2)) (and (= _$t1@@1 _$t1@@1) (= $t3@@0  (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))))) (and (=> (= (ControlFlow 0 217618) 218662) anon13_Then_correct@@0) (=> (= (ControlFlow 0 217618) 217640) anon13_Else_correct@@0))))))
(let ((inline$$InitEventStore$0$anon0_correct@@2  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@4 T@$1_Event_EventHandle) ) (! (let ((stream@@3 (|Select__T@[$1_Event_EventHandle]Multiset_91859_| (|streams#$EventStore| $es) handle@@4)))
 (and (= (|l#Multiset_91859| stream@@3) 0) (forall ((v@@44 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_91859| stream@@3) v@@44) 0)
 :qid |RecoveryAddresscvc5bpl.134:13|
 :skolemid |2|
))))
 :qid |RecoveryAddresscvc5bpl.2787:13|
 :skolemid |79|
))) (= (ControlFlow 0 217490) 217618)) anon0$1_correct@@2)))
(let ((anon0_correct@@2  (=> (= (ControlFlow 0 301760) 217490) inline$$InitEventStore$0$anon0_correct@@2)))
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
(declare-fun $1_Roles_RoleId_$memory@2@@1 () T@$Memory_124848)
(declare-fun |$temp_0'bool'@0@@1| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@2 () T@$Memory_124848)
(declare-fun $1_Roles_RoleId_$memory@0@@2 () T@$Memory_124848)
(declare-fun |$temp_0'$1_Roles_RoleId'@0@@1| () T@$1_Roles_RoleId)
(declare-fun $t8 () Int)
(declare-fun $1_Roles_RoleId_$modifies@@2 () |T@[Int]Bool|)
(declare-fun _$t0@@3 () T@$signer)
(push 1)
(set-info :boogie-vc-id $1_Roles_new_child_vasp_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 302936) (let ((L2_correct@@1  (and (=> (= (ControlFlow 0 219709) (- 0 303707)) (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t2@@1)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t2@@1)) 5))) (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t3@@1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t3@@1)) 5)))) (=> (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t2@@1)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t2@@1)) 5))) (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t3@@1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t3@@1)) 5))) (=> (= (ControlFlow 0 219709) (- 0 303761)) (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t2@@1)) (= 5 $t6@@1)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t2@@1)) 5)) (= 3 $t6@@1))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2)) (= 6 $t6@@1))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t3@@1)) (= 5 $t6@@1))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t3@@1)) 5)) (= 3 $t6@@1))))))))
(let ((anon10_Then_correct@@0  (=> $t9@@2 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2)) (= 6 $t6@@1)) (and (= $t6@@1 $t6@@1) (= (ControlFlow 0 219541) 219709))) L2_correct@@1))))
(let ((anon9_Then_correct  (=> (and (and $t5@@2 (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t4@@1)) (= 5 $t6@@1)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t4@@1)) 5)) (= 3 $t6@@1)))) (and (= $t6@@1 $t6@@1) (= (ControlFlow 0 219761) 219709))) L2_correct@@1)))
(let ((anon7_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@1) (|$addr#$signer| _$t1@@2)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@1) (|$addr#$signer| _$t1@@2))) 6)) (and (=> (= (ControlFlow 0 219499) (- 0 303327)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t2@@1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t2@@1))) (and (=> (= (ControlFlow 0 219499) (- 0 303339)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t2@@1)) 5)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t2@@1)) 5))) (and (=> (= (ControlFlow 0 219499) (- 0 303357)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2))) (and (=> (= (ControlFlow 0 219499) (- 0 303368)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t3@@1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t3@@1))) (and (=> (= (ControlFlow 0 219499) (- 0 303380)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t3@@1)) 5)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t3@@1)) 5))) (and (=> (= (ControlFlow 0 219499) (- 0 303398)) (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@1) (|$addr#$signer| _$t1@@2))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@1) (|$addr#$signer| _$t1@@2)) (and (=> (= (ControlFlow 0 219499) (- 0 303407)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@1) (|$addr#$signer| _$t1@@2))) 6)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@1) (|$addr#$signer| _$t1@@2))) 6) (and (=> (= (ControlFlow 0 219499) (- 0 303422)) (forall ((addr@@22 Int) ) (!  (=> (|$IsValid'address'| addr@@22) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@1) addr@@22) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@1) addr@@22)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr@@22) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr@@22)) 0))))
 :qid |RecoveryAddresscvc5bpl.5385:15|
 :skolemid |140|
))) (=> (forall ((addr@@23 Int) ) (!  (=> (|$IsValid'address'| addr@@23) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@1) addr@@23) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@1) addr@@23)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr@@23) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr@@23)) 0))))
 :qid |RecoveryAddresscvc5bpl.5385:15|
 :skolemid |140|
)) (and (=> (= (ControlFlow 0 219499) (- 0 303469)) (forall ((addr@@24 Int) ) (!  (=> (|$IsValid'address'| addr@@24) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@1) addr@@24) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@1) addr@@24)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr@@24) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr@@24)) 1))))
 :qid |RecoveryAddresscvc5bpl.5389:15|
 :skolemid |141|
))) (=> (forall ((addr@@25 Int) ) (!  (=> (|$IsValid'address'| addr@@25) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@1) addr@@25) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@1) addr@@25)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr@@25) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr@@25)) 1))))
 :qid |RecoveryAddresscvc5bpl.5389:15|
 :skolemid |141|
)) (and (=> (= (ControlFlow 0 219499) (- 0 303516)) (forall ((addr@@26 Int) ) (!  (=> (|$IsValid'address'| addr@@26) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@1) addr@@26) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@1) addr@@26)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr@@26) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr@@26)) 3))))
 :qid |RecoveryAddresscvc5bpl.5393:15|
 :skolemid |142|
))) (=> (forall ((addr@@27 Int) ) (!  (=> (|$IsValid'address'| addr@@27) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@1) addr@@27) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@1) addr@@27)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr@@27) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr@@27)) 3))))
 :qid |RecoveryAddresscvc5bpl.5393:15|
 :skolemid |142|
)) (and (=> (= (ControlFlow 0 219499) (- 0 303563)) (forall ((addr@@28 Int) ) (!  (=> (|$IsValid'address'| addr@@28) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@1) addr@@28) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@1) addr@@28)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr@@28) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr@@28)) 4))))
 :qid |RecoveryAddresscvc5bpl.5397:15|
 :skolemid |143|
))) (=> (forall ((addr@@29 Int) ) (!  (=> (|$IsValid'address'| addr@@29) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@1) addr@@29) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@1) addr@@29)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr@@29) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr@@29)) 4))))
 :qid |RecoveryAddresscvc5bpl.5397:15|
 :skolemid |143|
)) (and (=> (= (ControlFlow 0 219499) (- 0 303610)) (forall ((addr@@30 Int) ) (!  (=> (|$IsValid'address'| addr@@30) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@1) addr@@30) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@1) addr@@30)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr@@30) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr@@30)) 2))))
 :qid |RecoveryAddresscvc5bpl.5401:15|
 :skolemid |144|
))) (=> (forall ((addr@@31 Int) ) (!  (=> (|$IsValid'address'| addr@@31) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@1) addr@@31) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@1) addr@@31)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr@@31) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr@@31)) 2))))
 :qid |RecoveryAddresscvc5bpl.5401:15|
 :skolemid |144|
)) (=> (= (ControlFlow 0 219499) (- 0 303657)) (forall ((addr@@32 Int) ) (!  (=> (|$IsValid'address'| addr@@32) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@1) addr@@32) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@1) addr@@32)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr@@32) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr@@32)) 5))))
 :qid |RecoveryAddresscvc5bpl.5405:15|
 :skolemid |145|
))))))))))))))))))))))))))))))
(let ((anon11_Else_correct@@1  (=> (and (and (not |$temp_0'bool'@0@@1|) (= $1_Roles_RoleId_$memory@1@@2 ($Memory_124848 (|Store__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2) false) (|contents#$Memory_124848| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2@@1 $1_Roles_RoleId_$memory@1@@2) (= (ControlFlow 0 219067) 219499))) anon7_correct)))
(let ((anon11_Then_correct@@1  (=> (and (and |$temp_0'bool'@0@@1| (= $1_Roles_RoleId_$memory@0@@2 ($Memory_124848 (|Store__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2) |$temp_0'$1_Roles_RoleId'@0@@1|)))) (and (= $1_Roles_RoleId_$memory@2@@1 $1_Roles_RoleId_$memory@0@@2) (= (ControlFlow 0 219513) 219499))) anon7_correct)))
(let ((anon10_Else_correct@@0  (=> (not $t9@@2) (and (=> (= (ControlFlow 0 219053) 219513) anon11_Then_correct@@1) (=> (= (ControlFlow 0 219053) 219067) anon11_Else_correct@@1)))))
(let ((anon9_Else_correct  (=> (not $t5@@2) (=> (and (|$IsValid'u64'| 6) (= $t8 (|$addr#$signer| _$t1@@2))) (and (=> (= (ControlFlow 0 219047) (- 0 303177)) (=> (= 6 0) (= $t8 173345816))) (=> (=> (= 6 0) (= $t8 173345816)) (and (=> (= (ControlFlow 0 219047) (- 0 303193)) (=> (= 6 1) (= $t8 186537453))) (=> (=> (= 6 1) (= $t8 186537453)) (and (=> (= (ControlFlow 0 219047) (- 0 303209)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@2 (|$addr#$signer| _$t1@@2))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@2 (|$addr#$signer| _$t1@@2)) (=> (= $t9@@2 (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2))) (and (=> (= (ControlFlow 0 219047) 219541) anon10_Then_correct@@0) (=> (= (ControlFlow 0 219047) 219053) anon10_Else_correct@@0)))))))))))))
(let ((anon0$1_correct@@3  (=> (and (|$IsValid'address'| (|$addr#$signer| _$t0@@3)) (|$IsValid'address'| (|$addr#$signer| _$t1@@2))) (=> (and (and (and (forall (($a_0@@5 Int) ) (! (let (($rsc@@5 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $a_0@@5)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@5))
 :qid |RecoveryAddresscvc5bpl.5216:20|
 :skolemid |139|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $a_0@@5))
)) (= $t2@@1 (|$addr#$signer| _$t0@@3))) (and (= $t3@@1 (|$addr#$signer| _$t0@@3)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@2 (|$addr#$signer| _$t1@@2)))) (and (and (= _$t0@@3 _$t0@@3) (= _$t1@@2 _$t1@@2)) (and (= $t4@@1 (|$addr#$signer| _$t0@@3)) (= $t5@@2  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t4@@1)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t4@@1)) 5))))))) (and (=> (= (ControlFlow 0 218969) 219761) anon9_Then_correct) (=> (= (ControlFlow 0 218969) 219047) anon9_Else_correct))))))
(let ((inline$$InitEventStore$0$anon0_correct@@3  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@5 T@$1_Event_EventHandle) ) (! (let ((stream@@4 (|Select__T@[$1_Event_EventHandle]Multiset_91859_| (|streams#$EventStore| $es) handle@@5)))
 (and (= (|l#Multiset_91859| stream@@4) 0) (forall ((v@@45 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_91859| stream@@4) v@@45) 0)
 :qid |RecoveryAddresscvc5bpl.134:13|
 :skolemid |2|
))))
 :qid |RecoveryAddresscvc5bpl.2787:13|
 :skolemid |79|
))) (= (ControlFlow 0 218839) 218969)) anon0$1_correct@@3)))
(let ((anon0_correct@@3  (=> (= (ControlFlow 0 302936) 218839) inline$$InitEventStore$0$anon0_correct@@3)))
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
(declare-fun $1_Roles_RoleId_$memory@2@@2 () T@$Memory_124848)
(declare-fun |$temp_0'bool'@0@@2| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@3 () T@$Memory_124848)
(declare-fun $1_Roles_RoleId_$memory@0@@3 () T@$Memory_124848)
(declare-fun |$temp_0'$1_Roles_RoleId'@0@@2| () T@$1_Roles_RoleId)
(declare-fun $t8@@0 () Int)
(declare-fun $1_Roles_RoleId_$modifies@@3 () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_Roles_new_designated_dealer_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 303870) (let ((L2_correct@@2  (and (=> (= (ControlFlow 0 220890) (- 0 304699)) (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t2@@2)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t2@@2)) 1))) (not (= (|$addr#$signer| _$t0@@4) 186537453))) (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t3@@2))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t3@@2)) 1))) (not (= (|$addr#$signer| _$t0@@4) 186537453)))) (=> (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t2@@2)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t2@@2)) 1))) (not (= (|$addr#$signer| _$t0@@4) 186537453))) (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t3@@2))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t3@@2)) 1))) (not (= (|$addr#$signer| _$t0@@4) 186537453))) (=> (= (ControlFlow 0 220890) (- 0 304775)) (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t2@@2)) (= 5 $t6@@2)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t2@@2)) 1)) (= 3 $t6@@2))) (and (not (= (|$addr#$signer| _$t0@@4) 186537453)) (= 2 $t6@@2))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3)) (= 6 $t6@@2))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t3@@2)) (= 5 $t6@@2))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t3@@2)) 1)) (= 3 $t6@@2))) (and (not (= (|$addr#$signer| _$t0@@4) 186537453)) (= 2 $t6@@2))))))))
(let ((anon10_Then_correct@@1  (=> $t9@@3 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3)) (= 6 $t6@@2)) (and (= $t6@@2 $t6@@2) (= (ControlFlow 0 220658) 220890))) L2_correct@@2))))
(let ((anon9_Then_correct@@0  (=> (and (and $t5@@3 (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t4@@2)) (= 5 $t6@@2)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t4@@2)) 1)) (= 3 $t6@@2))) (and (not (= (|$addr#$signer| _$t0@@4) 186537453)) (= 2 $t6@@2)))) (and (= $t6@@2 $t6@@2) (= (ControlFlow 0 220962) 220890))) L2_correct@@2)))
(let ((anon7_correct@@0  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@2) (|$addr#$signer| _$t1@@3)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@2) (|$addr#$signer| _$t1@@3))) 2)) (and (=> (= (ControlFlow 0 220616) (- 0 304291)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t2@@2)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t2@@2))) (and (=> (= (ControlFlow 0 220616) (- 0 304303)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t2@@2)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t2@@2)) 1))) (and (=> (= (ControlFlow 0 220616) (- 0 304321)) (not (not (= (|$addr#$signer| _$t0@@4) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t0@@4) 186537453))) (and (=> (= (ControlFlow 0 220616) (- 0 304335)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3))) (and (=> (= (ControlFlow 0 220616) (- 0 304346)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t3@@2)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t3@@2))) (and (=> (= (ControlFlow 0 220616) (- 0 304358)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t3@@2)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t3@@2)) 1))) (and (=> (= (ControlFlow 0 220616) (- 0 304376)) (not (not (= (|$addr#$signer| _$t0@@4) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t0@@4) 186537453))) (and (=> (= (ControlFlow 0 220616) (- 0 304390)) (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@2) (|$addr#$signer| _$t1@@3))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@2) (|$addr#$signer| _$t1@@3)) (and (=> (= (ControlFlow 0 220616) (- 0 304399)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@2) (|$addr#$signer| _$t1@@3))) 2)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@2) (|$addr#$signer| _$t1@@3))) 2) (and (=> (= (ControlFlow 0 220616) (- 0 304414)) (forall ((addr@@33 Int) ) (!  (=> (|$IsValid'address'| addr@@33) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@2) addr@@33) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@2) addr@@33)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr@@33) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr@@33)) 0))))
 :qid |RecoveryAddresscvc5bpl.5643:15|
 :skolemid |147|
))) (=> (forall ((addr@@34 Int) ) (!  (=> (|$IsValid'address'| addr@@34) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@2) addr@@34) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@2) addr@@34)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr@@34) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr@@34)) 0))))
 :qid |RecoveryAddresscvc5bpl.5643:15|
 :skolemid |147|
)) (and (=> (= (ControlFlow 0 220616) (- 0 304461)) (forall ((addr@@35 Int) ) (!  (=> (|$IsValid'address'| addr@@35) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@2) addr@@35) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@2) addr@@35)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr@@35) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr@@35)) 1))))
 :qid |RecoveryAddresscvc5bpl.5647:15|
 :skolemid |148|
))) (=> (forall ((addr@@36 Int) ) (!  (=> (|$IsValid'address'| addr@@36) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@2) addr@@36) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@2) addr@@36)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr@@36) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr@@36)) 1))))
 :qid |RecoveryAddresscvc5bpl.5647:15|
 :skolemid |148|
)) (and (=> (= (ControlFlow 0 220616) (- 0 304508)) (forall ((addr@@37 Int) ) (!  (=> (|$IsValid'address'| addr@@37) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@2) addr@@37) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@2) addr@@37)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr@@37) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr@@37)) 3))))
 :qid |RecoveryAddresscvc5bpl.5651:15|
 :skolemid |149|
))) (=> (forall ((addr@@38 Int) ) (!  (=> (|$IsValid'address'| addr@@38) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@2) addr@@38) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@2) addr@@38)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr@@38) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr@@38)) 3))))
 :qid |RecoveryAddresscvc5bpl.5651:15|
 :skolemid |149|
)) (and (=> (= (ControlFlow 0 220616) (- 0 304555)) (forall ((addr@@39 Int) ) (!  (=> (|$IsValid'address'| addr@@39) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@2) addr@@39) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@2) addr@@39)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr@@39) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr@@39)) 4))))
 :qid |RecoveryAddresscvc5bpl.5655:15|
 :skolemid |150|
))) (=> (forall ((addr@@40 Int) ) (!  (=> (|$IsValid'address'| addr@@40) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@2) addr@@40) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@2) addr@@40)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr@@40) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr@@40)) 4))))
 :qid |RecoveryAddresscvc5bpl.5655:15|
 :skolemid |150|
)) (and (=> (= (ControlFlow 0 220616) (- 0 304602)) (forall ((addr@@41 Int) ) (!  (=> (|$IsValid'address'| addr@@41) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@2) addr@@41) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@2) addr@@41)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr@@41) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr@@41)) 5))))
 :qid |RecoveryAddresscvc5bpl.5659:15|
 :skolemid |151|
))) (=> (forall ((addr@@42 Int) ) (!  (=> (|$IsValid'address'| addr@@42) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@2) addr@@42) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@2) addr@@42)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr@@42) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr@@42)) 5))))
 :qid |RecoveryAddresscvc5bpl.5659:15|
 :skolemid |151|
)) (=> (= (ControlFlow 0 220616) (- 0 304649)) (forall ((addr@@43 Int) ) (!  (=> (|$IsValid'address'| addr@@43) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@2) addr@@43) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@2) addr@@43)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr@@43) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr@@43)) 6))))
 :qid |RecoveryAddresscvc5bpl.5663:15|
 :skolemid |152|
))))))))))))))))))))))))))))))))))
(let ((anon11_Else_correct@@2  (=> (and (and (not |$temp_0'bool'@0@@2|) (= $1_Roles_RoleId_$memory@1@@3 ($Memory_124848 (|Store__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3) false) (|contents#$Memory_124848| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2@@2 $1_Roles_RoleId_$memory@1@@3) (= (ControlFlow 0 220156) 220616))) anon7_correct@@0)))
(let ((anon11_Then_correct@@2  (=> (and (and |$temp_0'bool'@0@@2| (= $1_Roles_RoleId_$memory@0@@3 ($Memory_124848 (|Store__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3) |$temp_0'$1_Roles_RoleId'@0@@2|)))) (and (= $1_Roles_RoleId_$memory@2@@2 $1_Roles_RoleId_$memory@0@@3) (= (ControlFlow 0 220630) 220616))) anon7_correct@@0)))
(let ((anon10_Else_correct@@1  (=> (not $t9@@3) (and (=> (= (ControlFlow 0 220142) 220630) anon11_Then_correct@@2) (=> (= (ControlFlow 0 220142) 220156) anon11_Else_correct@@2)))))
(let ((anon9_Else_correct@@0  (=> (not $t5@@3) (=> (and (|$IsValid'u64'| 2) (= $t8@@0 (|$addr#$signer| _$t1@@3))) (and (=> (= (ControlFlow 0 220136) (- 0 304141)) (=> (= 2 0) (= $t8@@0 173345816))) (=> (=> (= 2 0) (= $t8@@0 173345816)) (and (=> (= (ControlFlow 0 220136) (- 0 304157)) (=> (= 2 1) (= $t8@@0 186537453))) (=> (=> (= 2 1) (= $t8@@0 186537453)) (and (=> (= (ControlFlow 0 220136) (- 0 304173)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@3 (|$addr#$signer| _$t1@@3))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@3 (|$addr#$signer| _$t1@@3)) (=> (= $t9@@3 (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3))) (and (=> (= (ControlFlow 0 220136) 220658) anon10_Then_correct@@1) (=> (= (ControlFlow 0 220136) 220142) anon10_Else_correct@@1)))))))))))))
(let ((anon0$1_correct@@4  (=> (and (|$IsValid'address'| (|$addr#$signer| _$t0@@4)) (|$IsValid'address'| (|$addr#$signer| _$t1@@3))) (=> (and (and (and (forall (($a_0@@6 Int) ) (! (let (($rsc@@6 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $a_0@@6)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@6))
 :qid |RecoveryAddresscvc5bpl.5464:20|
 :skolemid |146|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $a_0@@6))
)) (= $t2@@2 (|$addr#$signer| _$t0@@4))) (and (= $t3@@2 (|$addr#$signer| _$t0@@4)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@3 (|$addr#$signer| _$t1@@3)))) (and (and (= _$t0@@4 _$t0@@4) (= _$t1@@3 _$t1@@3)) (and (= $t4@@2 (|$addr#$signer| _$t0@@4)) (= $t5@@3  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t4@@2)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t4@@2)) 1))) (not (= (|$addr#$signer| _$t0@@4) 186537453))))))) (and (=> (= (ControlFlow 0 220058) 220962) anon9_Then_correct@@0) (=> (= (ControlFlow 0 220058) 220136) anon9_Else_correct@@0))))))
(let ((inline$$InitEventStore$0$anon0_correct@@4  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@6 T@$1_Event_EventHandle) ) (! (let ((stream@@5 (|Select__T@[$1_Event_EventHandle]Multiset_91859_| (|streams#$EventStore| $es) handle@@6)))
 (and (= (|l#Multiset_91859| stream@@5) 0) (forall ((v@@46 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_91859| stream@@5) v@@46) 0)
 :qid |RecoveryAddresscvc5bpl.134:13|
 :skolemid |2|
))))
 :qid |RecoveryAddresscvc5bpl.2787:13|
 :skolemid |79|
))) (= (ControlFlow 0 219916) 220058)) anon0$1_correct@@4)))
(let ((anon0_correct@@4  (=> (= (ControlFlow 0 303870) 219916) inline$$InitEventStore$0$anon0_correct@@4)))
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
(declare-fun $1_Roles_RoleId_$memory@2@@3 () T@$Memory_124848)
(declare-fun |$temp_0'bool'@0@@3| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@4 () T@$Memory_124848)
(declare-fun $1_Roles_RoleId_$memory@0@@4 () T@$Memory_124848)
(declare-fun |$temp_0'$1_Roles_RoleId'@0@@3| () T@$1_Roles_RoleId)
(declare-fun $t8@@1 () Int)
(declare-fun $1_Roles_RoleId_$modifies@@4 () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_Roles_new_parent_vasp_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 304922) (let ((L2_correct@@3  (and (=> (= (ControlFlow 0 222099) (- 0 305751)) (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t2@@3)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t2@@3)) 1))) (not (= (|$addr#$signer| _$t0@@5) 186537453))) (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t3@@3))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t3@@3)) 1))) (not (= (|$addr#$signer| _$t0@@5) 186537453)))) (=> (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t2@@3)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t2@@3)) 1))) (not (= (|$addr#$signer| _$t0@@5) 186537453))) (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t3@@3))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t3@@3)) 1))) (not (= (|$addr#$signer| _$t0@@5) 186537453))) (=> (= (ControlFlow 0 222099) (- 0 305827)) (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t2@@3)) (= 5 $t6@@3)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t2@@3)) 1)) (= 3 $t6@@3))) (and (not (= (|$addr#$signer| _$t0@@5) 186537453)) (= 2 $t6@@3))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4)) (= 6 $t6@@3))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t3@@3)) (= 5 $t6@@3))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t3@@3)) 1)) (= 3 $t6@@3))) (and (not (= (|$addr#$signer| _$t0@@5) 186537453)) (= 2 $t6@@3))))))))
(let ((anon10_Then_correct@@2  (=> $t9@@4 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4)) (= 6 $t6@@3)) (and (= $t6@@3 $t6@@3) (= (ControlFlow 0 221867) 222099))) L2_correct@@3))))
(let ((anon9_Then_correct@@1  (=> (and (and $t5@@4 (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t4@@3)) (= 5 $t6@@3)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t4@@3)) 1)) (= 3 $t6@@3))) (and (not (= (|$addr#$signer| _$t0@@5) 186537453)) (= 2 $t6@@3)))) (and (= $t6@@3 $t6@@3) (= (ControlFlow 0 222171) 222099))) L2_correct@@3)))
(let ((anon7_correct@@1  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@3) (|$addr#$signer| _$t1@@4)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@3) (|$addr#$signer| _$t1@@4))) 5)) (and (=> (= (ControlFlow 0 221825) (- 0 305343)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t2@@3)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t2@@3))) (and (=> (= (ControlFlow 0 221825) (- 0 305355)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t2@@3)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t2@@3)) 1))) (and (=> (= (ControlFlow 0 221825) (- 0 305373)) (not (not (= (|$addr#$signer| _$t0@@5) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t0@@5) 186537453))) (and (=> (= (ControlFlow 0 221825) (- 0 305387)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4))) (and (=> (= (ControlFlow 0 221825) (- 0 305398)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t3@@3)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t3@@3))) (and (=> (= (ControlFlow 0 221825) (- 0 305410)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t3@@3)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t3@@3)) 1))) (and (=> (= (ControlFlow 0 221825) (- 0 305428)) (not (not (= (|$addr#$signer| _$t0@@5) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t0@@5) 186537453))) (and (=> (= (ControlFlow 0 221825) (- 0 305442)) (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@3) (|$addr#$signer| _$t1@@4))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@3) (|$addr#$signer| _$t1@@4)) (and (=> (= (ControlFlow 0 221825) (- 0 305451)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@3) (|$addr#$signer| _$t1@@4))) 5)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@3) (|$addr#$signer| _$t1@@4))) 5) (and (=> (= (ControlFlow 0 221825) (- 0 305466)) (forall ((addr@@44 Int) ) (!  (=> (|$IsValid'address'| addr@@44) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@3) addr@@44) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@3) addr@@44)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr@@44) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr@@44)) 0))))
 :qid |RecoveryAddresscvc5bpl.5901:15|
 :skolemid |154|
))) (=> (forall ((addr@@45 Int) ) (!  (=> (|$IsValid'address'| addr@@45) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@3) addr@@45) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@3) addr@@45)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr@@45) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr@@45)) 0))))
 :qid |RecoveryAddresscvc5bpl.5901:15|
 :skolemid |154|
)) (and (=> (= (ControlFlow 0 221825) (- 0 305513)) (forall ((addr@@46 Int) ) (!  (=> (|$IsValid'address'| addr@@46) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@3) addr@@46) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@3) addr@@46)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr@@46) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr@@46)) 1))))
 :qid |RecoveryAddresscvc5bpl.5905:15|
 :skolemid |155|
))) (=> (forall ((addr@@47 Int) ) (!  (=> (|$IsValid'address'| addr@@47) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@3) addr@@47) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@3) addr@@47)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr@@47) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr@@47)) 1))))
 :qid |RecoveryAddresscvc5bpl.5905:15|
 :skolemid |155|
)) (and (=> (= (ControlFlow 0 221825) (- 0 305560)) (forall ((addr@@48 Int) ) (!  (=> (|$IsValid'address'| addr@@48) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@3) addr@@48) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@3) addr@@48)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr@@48) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr@@48)) 3))))
 :qid |RecoveryAddresscvc5bpl.5909:15|
 :skolemid |156|
))) (=> (forall ((addr@@49 Int) ) (!  (=> (|$IsValid'address'| addr@@49) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@3) addr@@49) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@3) addr@@49)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr@@49) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr@@49)) 3))))
 :qid |RecoveryAddresscvc5bpl.5909:15|
 :skolemid |156|
)) (and (=> (= (ControlFlow 0 221825) (- 0 305607)) (forall ((addr@@50 Int) ) (!  (=> (|$IsValid'address'| addr@@50) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@3) addr@@50) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@3) addr@@50)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr@@50) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr@@50)) 4))))
 :qid |RecoveryAddresscvc5bpl.5913:15|
 :skolemid |157|
))) (=> (forall ((addr@@51 Int) ) (!  (=> (|$IsValid'address'| addr@@51) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@3) addr@@51) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@3) addr@@51)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr@@51) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr@@51)) 4))))
 :qid |RecoveryAddresscvc5bpl.5913:15|
 :skolemid |157|
)) (and (=> (= (ControlFlow 0 221825) (- 0 305654)) (forall ((addr@@52 Int) ) (!  (=> (|$IsValid'address'| addr@@52) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@3) addr@@52) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@3) addr@@52)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr@@52) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr@@52)) 2))))
 :qid |RecoveryAddresscvc5bpl.5917:15|
 :skolemid |158|
))) (=> (forall ((addr@@53 Int) ) (!  (=> (|$IsValid'address'| addr@@53) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@3) addr@@53) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@3) addr@@53)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr@@53) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr@@53)) 2))))
 :qid |RecoveryAddresscvc5bpl.5917:15|
 :skolemid |158|
)) (=> (= (ControlFlow 0 221825) (- 0 305701)) (forall ((addr@@54 Int) ) (!  (=> (|$IsValid'address'| addr@@54) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@3) addr@@54) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@3) addr@@54)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr@@54) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr@@54)) 6))))
 :qid |RecoveryAddresscvc5bpl.5921:15|
 :skolemid |159|
))))))))))))))))))))))))))))))))))
(let ((anon11_Else_correct@@3  (=> (and (and (not |$temp_0'bool'@0@@3|) (= $1_Roles_RoleId_$memory@1@@4 ($Memory_124848 (|Store__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4) false) (|contents#$Memory_124848| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2@@3 $1_Roles_RoleId_$memory@1@@4) (= (ControlFlow 0 221365) 221825))) anon7_correct@@1)))
(let ((anon11_Then_correct@@3  (=> (and (and |$temp_0'bool'@0@@3| (= $1_Roles_RoleId_$memory@0@@4 ($Memory_124848 (|Store__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4) |$temp_0'$1_Roles_RoleId'@0@@3|)))) (and (= $1_Roles_RoleId_$memory@2@@3 $1_Roles_RoleId_$memory@0@@4) (= (ControlFlow 0 221839) 221825))) anon7_correct@@1)))
(let ((anon10_Else_correct@@2  (=> (not $t9@@4) (and (=> (= (ControlFlow 0 221351) 221839) anon11_Then_correct@@3) (=> (= (ControlFlow 0 221351) 221365) anon11_Else_correct@@3)))))
(let ((anon9_Else_correct@@1  (=> (not $t5@@4) (=> (and (|$IsValid'u64'| 5) (= $t8@@1 (|$addr#$signer| _$t1@@4))) (and (=> (= (ControlFlow 0 221345) (- 0 305193)) (=> (= 5 0) (= $t8@@1 173345816))) (=> (=> (= 5 0) (= $t8@@1 173345816)) (and (=> (= (ControlFlow 0 221345) (- 0 305209)) (=> (= 5 1) (= $t8@@1 186537453))) (=> (=> (= 5 1) (= $t8@@1 186537453)) (and (=> (= (ControlFlow 0 221345) (- 0 305225)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@4 (|$addr#$signer| _$t1@@4))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@4 (|$addr#$signer| _$t1@@4)) (=> (= $t9@@4 (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4))) (and (=> (= (ControlFlow 0 221345) 221867) anon10_Then_correct@@2) (=> (= (ControlFlow 0 221345) 221351) anon10_Else_correct@@2)))))))))))))
(let ((anon0$1_correct@@5  (=> (and (|$IsValid'address'| (|$addr#$signer| _$t0@@5)) (|$IsValid'address'| (|$addr#$signer| _$t1@@4))) (=> (and (and (and (forall (($a_0@@7 Int) ) (! (let (($rsc@@7 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $a_0@@7)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@7))
 :qid |RecoveryAddresscvc5bpl.5722:20|
 :skolemid |153|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $a_0@@7))
)) (= $t2@@3 (|$addr#$signer| _$t0@@5))) (and (= $t3@@3 (|$addr#$signer| _$t0@@5)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@4 (|$addr#$signer| _$t1@@4)))) (and (and (= _$t0@@5 _$t0@@5) (= _$t1@@4 _$t1@@4)) (and (= $t4@@3 (|$addr#$signer| _$t0@@5)) (= $t5@@4  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t4@@3)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t4@@3)) 1))) (not (= (|$addr#$signer| _$t0@@5) 186537453))))))) (and (=> (= (ControlFlow 0 221267) 222171) anon9_Then_correct@@1) (=> (= (ControlFlow 0 221267) 221345) anon9_Else_correct@@1))))))
(let ((inline$$InitEventStore$0$anon0_correct@@5  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@7 T@$1_Event_EventHandle) ) (! (let ((stream@@6 (|Select__T@[$1_Event_EventHandle]Multiset_91859_| (|streams#$EventStore| $es) handle@@7)))
 (and (= (|l#Multiset_91859| stream@@6) 0) (forall ((v@@47 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_91859| stream@@6) v@@47) 0)
 :qid |RecoveryAddresscvc5bpl.134:13|
 :skolemid |2|
))))
 :qid |RecoveryAddresscvc5bpl.2787:13|
 :skolemid |79|
))) (= (ControlFlow 0 221125) 221267)) anon0$1_correct@@5)))
(let ((anon0_correct@@5  (=> (= (ControlFlow 0 304922) 221125) inline$$InitEventStore$0$anon0_correct@@5)))
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
(declare-fun $1_Roles_RoleId_$memory@2@@4 () T@$Memory_124848)
(declare-fun |$temp_0'bool'@0@@4| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@5 () T@$Memory_124848)
(declare-fun $1_Roles_RoleId_$memory@0@@5 () T@$Memory_124848)
(declare-fun |$temp_0'$1_Roles_RoleId'@0@@4| () T@$1_Roles_RoleId)
(declare-fun $t8@@2 () Int)
(declare-fun $1_Roles_RoleId_$modifies@@5 () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_Roles_new_validator_operator_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 305974) (let ((L2_correct@@4  (and (=> (= (ControlFlow 0 223320) (- 0 306833)) (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t2@@4)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t2@@4)) 0))) (not (= (|$addr#$signer| _$t0@@6) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t3@@4))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t3@@4)) 0))) (not (= (|$addr#$signer| _$t0@@6) 173345816)))) (=> (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t2@@4)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t2@@4)) 0))) (not (= (|$addr#$signer| _$t0@@6) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t3@@4))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t3@@4)) 0))) (not (= (|$addr#$signer| _$t0@@6) 173345816))) (=> (= (ControlFlow 0 223320) (- 0 306909)) (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t2@@4)) (= 5 $t6@@4)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t2@@4)) 0)) (= 3 $t6@@4))) (and (not (= (|$addr#$signer| _$t0@@6) 173345816)) (= 2 $t6@@4))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5)) (= 6 $t6@@4))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t3@@4)) (= 5 $t6@@4))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t3@@4)) 0)) (= 3 $t6@@4))) (and (not (= (|$addr#$signer| _$t0@@6) 173345816)) (= 2 $t6@@4))))))))
(let ((anon10_Then_correct@@3  (=> $t9@@5 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5)) (= 6 $t6@@4)) (and (= $t6@@4 $t6@@4) (= (ControlFlow 0 223088) 223320))) L2_correct@@4))))
(let ((anon9_Then_correct@@2  (=> (and (and $t5@@5 (or (or (or (and (not (= (|$addr#$signer| _$t0@@6) 173345816)) (= 2 $t6@@4)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t4@@4)) (= 5 $t6@@4))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t4@@4)) 0)) (= 3 $t6@@4))) (and (not (= (|$addr#$signer| _$t0@@6) 173345816)) (= 2 $t6@@4)))) (and (= $t6@@4 $t6@@4) (= (ControlFlow 0 223412) 223320))) L2_correct@@4)))
(let ((anon7_correct@@2  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@4) (|$addr#$signer| _$t1@@5)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@4) (|$addr#$signer| _$t1@@5))) 4)) (and (=> (= (ControlFlow 0 223046) (- 0 306425)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t2@@4)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t2@@4))) (and (=> (= (ControlFlow 0 223046) (- 0 306437)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t2@@4)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t2@@4)) 0))) (and (=> (= (ControlFlow 0 223046) (- 0 306455)) (not (not (= (|$addr#$signer| _$t0@@6) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@6) 173345816))) (and (=> (= (ControlFlow 0 223046) (- 0 306469)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5))) (and (=> (= (ControlFlow 0 223046) (- 0 306480)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t3@@4)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t3@@4))) (and (=> (= (ControlFlow 0 223046) (- 0 306492)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t3@@4)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t3@@4)) 0))) (and (=> (= (ControlFlow 0 223046) (- 0 306510)) (not (not (= (|$addr#$signer| _$t0@@6) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@6) 173345816))) (and (=> (= (ControlFlow 0 223046) (- 0 306524)) (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@4) (|$addr#$signer| _$t1@@5))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@4) (|$addr#$signer| _$t1@@5)) (and (=> (= (ControlFlow 0 223046) (- 0 306533)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@4) (|$addr#$signer| _$t1@@5))) 4)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@4) (|$addr#$signer| _$t1@@5))) 4) (and (=> (= (ControlFlow 0 223046) (- 0 306548)) (forall ((addr@@55 Int) ) (!  (=> (|$IsValid'address'| addr@@55) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@4) addr@@55) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@4) addr@@55)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr@@55) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr@@55)) 0))))
 :qid |RecoveryAddresscvc5bpl.6159:15|
 :skolemid |161|
))) (=> (forall ((addr@@56 Int) ) (!  (=> (|$IsValid'address'| addr@@56) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@4) addr@@56) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@4) addr@@56)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr@@56) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr@@56)) 0))))
 :qid |RecoveryAddresscvc5bpl.6159:15|
 :skolemid |161|
)) (and (=> (= (ControlFlow 0 223046) (- 0 306595)) (forall ((addr@@57 Int) ) (!  (=> (|$IsValid'address'| addr@@57) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@4) addr@@57) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@4) addr@@57)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr@@57) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr@@57)) 1))))
 :qid |RecoveryAddresscvc5bpl.6163:15|
 :skolemid |162|
))) (=> (forall ((addr@@58 Int) ) (!  (=> (|$IsValid'address'| addr@@58) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@4) addr@@58) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@4) addr@@58)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr@@58) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr@@58)) 1))))
 :qid |RecoveryAddresscvc5bpl.6163:15|
 :skolemid |162|
)) (and (=> (= (ControlFlow 0 223046) (- 0 306642)) (forall ((addr@@59 Int) ) (!  (=> (|$IsValid'address'| addr@@59) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@4) addr@@59) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@4) addr@@59)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr@@59) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr@@59)) 3))))
 :qid |RecoveryAddresscvc5bpl.6167:15|
 :skolemid |163|
))) (=> (forall ((addr@@60 Int) ) (!  (=> (|$IsValid'address'| addr@@60) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@4) addr@@60) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@4) addr@@60)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr@@60) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr@@60)) 3))))
 :qid |RecoveryAddresscvc5bpl.6167:15|
 :skolemid |163|
)) (and (=> (= (ControlFlow 0 223046) (- 0 306689)) (forall ((addr@@61 Int) ) (!  (=> (|$IsValid'address'| addr@@61) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@4) addr@@61) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@4) addr@@61)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr@@61) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr@@61)) 2))))
 :qid |RecoveryAddresscvc5bpl.6171:15|
 :skolemid |164|
))) (=> (forall ((addr@@62 Int) ) (!  (=> (|$IsValid'address'| addr@@62) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@4) addr@@62) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@4) addr@@62)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr@@62) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr@@62)) 2))))
 :qid |RecoveryAddresscvc5bpl.6171:15|
 :skolemid |164|
)) (and (=> (= (ControlFlow 0 223046) (- 0 306736)) (forall ((addr@@63 Int) ) (!  (=> (|$IsValid'address'| addr@@63) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@4) addr@@63) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@4) addr@@63)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr@@63) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr@@63)) 5))))
 :qid |RecoveryAddresscvc5bpl.6175:15|
 :skolemid |165|
))) (=> (forall ((addr@@64 Int) ) (!  (=> (|$IsValid'address'| addr@@64) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@4) addr@@64) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@4) addr@@64)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr@@64) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr@@64)) 5))))
 :qid |RecoveryAddresscvc5bpl.6175:15|
 :skolemid |165|
)) (=> (= (ControlFlow 0 223046) (- 0 306783)) (forall ((addr@@65 Int) ) (!  (=> (|$IsValid'address'| addr@@65) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@4) addr@@65) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@4) addr@@65)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr@@65) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr@@65)) 6))))
 :qid |RecoveryAddresscvc5bpl.6179:15|
 :skolemid |166|
))))))))))))))))))))))))))))))))))
(let ((anon11_Else_correct@@4  (=> (and (and (not |$temp_0'bool'@0@@4|) (= $1_Roles_RoleId_$memory@1@@5 ($Memory_124848 (|Store__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5) false) (|contents#$Memory_124848| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2@@4 $1_Roles_RoleId_$memory@1@@5) (= (ControlFlow 0 222586) 223046))) anon7_correct@@2)))
(let ((anon11_Then_correct@@4  (=> (and (and |$temp_0'bool'@0@@4| (= $1_Roles_RoleId_$memory@0@@5 ($Memory_124848 (|Store__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5) |$temp_0'$1_Roles_RoleId'@0@@4|)))) (and (= $1_Roles_RoleId_$memory@2@@4 $1_Roles_RoleId_$memory@0@@5) (= (ControlFlow 0 223060) 223046))) anon7_correct@@2)))
(let ((anon10_Else_correct@@3  (=> (not $t9@@5) (and (=> (= (ControlFlow 0 222572) 223060) anon11_Then_correct@@4) (=> (= (ControlFlow 0 222572) 222586) anon11_Else_correct@@4)))))
(let ((anon9_Else_correct@@2  (=> (not $t5@@5) (=> (and (|$IsValid'u64'| 4) (= $t8@@2 (|$addr#$signer| _$t1@@5))) (and (=> (= (ControlFlow 0 222566) (- 0 306275)) (=> (= 4 0) (= $t8@@2 173345816))) (=> (=> (= 4 0) (= $t8@@2 173345816)) (and (=> (= (ControlFlow 0 222566) (- 0 306291)) (=> (= 4 1) (= $t8@@2 186537453))) (=> (=> (= 4 1) (= $t8@@2 186537453)) (and (=> (= (ControlFlow 0 222566) (- 0 306307)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@5 (|$addr#$signer| _$t1@@5))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@5 (|$addr#$signer| _$t1@@5)) (=> (= $t9@@5 (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5))) (and (=> (= (ControlFlow 0 222566) 223088) anon10_Then_correct@@3) (=> (= (ControlFlow 0 222566) 222572) anon10_Else_correct@@3)))))))))))))
(let ((anon0$1_correct@@6  (=> (and (|$IsValid'address'| (|$addr#$signer| _$t0@@6)) (|$IsValid'address'| (|$addr#$signer| _$t1@@5))) (=> (and (and (and (forall (($a_0@@8 Int) ) (! (let (($rsc@@8 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $a_0@@8)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@8))
 :qid |RecoveryAddresscvc5bpl.5980:20|
 :skolemid |160|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $a_0@@8))
)) (= $t2@@4 (|$addr#$signer| _$t0@@6))) (and (= $t3@@4 (|$addr#$signer| _$t0@@6)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@5 (|$addr#$signer| _$t1@@5)))) (and (and (= _$t0@@6 _$t0@@6) (= _$t1@@5 _$t1@@5)) (and (= $t4@@4 (|$addr#$signer| _$t0@@6)) (= $t5@@5  (or (or (or (not (= (|$addr#$signer| _$t0@@6) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t4@@4))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t4@@4)) 0))) (not (= (|$addr#$signer| _$t0@@6) 173345816))))))) (and (=> (= (ControlFlow 0 222488) 223412) anon9_Then_correct@@2) (=> (= (ControlFlow 0 222488) 222566) anon9_Else_correct@@2))))))
(let ((inline$$InitEventStore$0$anon0_correct@@6  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@8 T@$1_Event_EventHandle) ) (! (let ((stream@@7 (|Select__T@[$1_Event_EventHandle]Multiset_91859_| (|streams#$EventStore| $es) handle@@8)))
 (and (= (|l#Multiset_91859| stream@@7) 0) (forall ((v@@48 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_91859| stream@@7) v@@48) 0)
 :qid |RecoveryAddresscvc5bpl.134:13|
 :skolemid |2|
))))
 :qid |RecoveryAddresscvc5bpl.2787:13|
 :skolemid |79|
))) (= (ControlFlow 0 222334) 222488)) anon0$1_correct@@6)))
(let ((anon0_correct@@6  (=> (= (ControlFlow 0 305974) 222334) inline$$InitEventStore$0$anon0_correct@@6)))
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
(declare-fun $1_Roles_RoleId_$memory@2@@5 () T@$Memory_124848)
(declare-fun |$temp_0'bool'@0@@5| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@6 () T@$Memory_124848)
(declare-fun $1_Roles_RoleId_$memory@0@@6 () T@$Memory_124848)
(declare-fun |$temp_0'$1_Roles_RoleId'@0@@5| () T@$1_Roles_RoleId)
(declare-fun $t8@@3 () Int)
(declare-fun $1_Roles_RoleId_$modifies@@6 () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_Roles_new_validator_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 307056) (let ((L2_correct@@5  (and (=> (= (ControlFlow 0 224563) (- 0 307915)) (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t2@@5)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t2@@5)) 0))) (not (= (|$addr#$signer| _$t0@@7) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@6))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t3@@5))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t3@@5)) 0))) (not (= (|$addr#$signer| _$t0@@7) 173345816)))) (=> (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t2@@5)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t2@@5)) 0))) (not (= (|$addr#$signer| _$t0@@7) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@6))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t3@@5))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t3@@5)) 0))) (not (= (|$addr#$signer| _$t0@@7) 173345816))) (=> (= (ControlFlow 0 224563) (- 0 307991)) (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t2@@5)) (= 5 $t6@@5)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t2@@5)) 0)) (= 3 $t6@@5))) (and (not (= (|$addr#$signer| _$t0@@7) 173345816)) (= 2 $t6@@5))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@6)) (= 6 $t6@@5))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t3@@5)) (= 5 $t6@@5))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t3@@5)) 0)) (= 3 $t6@@5))) (and (not (= (|$addr#$signer| _$t0@@7) 173345816)) (= 2 $t6@@5))))))))
(let ((anon10_Then_correct@@4  (=> $t9@@6 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@6)) (= 6 $t6@@5)) (and (= $t6@@5 $t6@@5) (= (ControlFlow 0 224331) 224563))) L2_correct@@5))))
(let ((anon9_Then_correct@@3  (=> (and (and $t5@@6 (or (or (or (and (not (= (|$addr#$signer| _$t0@@7) 173345816)) (= 2 $t6@@5)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t4@@5)) (= 5 $t6@@5))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t4@@5)) 0)) (= 3 $t6@@5))) (and (not (= (|$addr#$signer| _$t0@@7) 173345816)) (= 2 $t6@@5)))) (and (= $t6@@5 $t6@@5) (= (ControlFlow 0 224655) 224563))) L2_correct@@5)))
(let ((anon7_correct@@3  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@5) (|$addr#$signer| _$t1@@6)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@5) (|$addr#$signer| _$t1@@6))) 3)) (and (=> (= (ControlFlow 0 224289) (- 0 307507)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t2@@5)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t2@@5))) (and (=> (= (ControlFlow 0 224289) (- 0 307519)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t2@@5)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t2@@5)) 0))) (and (=> (= (ControlFlow 0 224289) (- 0 307537)) (not (not (= (|$addr#$signer| _$t0@@7) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@7) 173345816))) (and (=> (= (ControlFlow 0 224289) (- 0 307551)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@6)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@6))) (and (=> (= (ControlFlow 0 224289) (- 0 307562)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t3@@5)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t3@@5))) (and (=> (= (ControlFlow 0 224289) (- 0 307574)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t3@@5)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t3@@5)) 0))) (and (=> (= (ControlFlow 0 224289) (- 0 307592)) (not (not (= (|$addr#$signer| _$t0@@7) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@7) 173345816))) (and (=> (= (ControlFlow 0 224289) (- 0 307606)) (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@5) (|$addr#$signer| _$t1@@6))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@5) (|$addr#$signer| _$t1@@6)) (and (=> (= (ControlFlow 0 224289) (- 0 307615)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@5) (|$addr#$signer| _$t1@@6))) 3)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@5) (|$addr#$signer| _$t1@@6))) 3) (and (=> (= (ControlFlow 0 224289) (- 0 307630)) (forall ((addr@@66 Int) ) (!  (=> (|$IsValid'address'| addr@@66) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@5) addr@@66) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@5) addr@@66)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr@@66) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr@@66)) 0))))
 :qid |RecoveryAddresscvc5bpl.6417:15|
 :skolemid |168|
))) (=> (forall ((addr@@67 Int) ) (!  (=> (|$IsValid'address'| addr@@67) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@5) addr@@67) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@5) addr@@67)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr@@67) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr@@67)) 0))))
 :qid |RecoveryAddresscvc5bpl.6417:15|
 :skolemid |168|
)) (and (=> (= (ControlFlow 0 224289) (- 0 307677)) (forall ((addr@@68 Int) ) (!  (=> (|$IsValid'address'| addr@@68) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@5) addr@@68) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@5) addr@@68)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr@@68) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr@@68)) 1))))
 :qid |RecoveryAddresscvc5bpl.6421:15|
 :skolemid |169|
))) (=> (forall ((addr@@69 Int) ) (!  (=> (|$IsValid'address'| addr@@69) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@5) addr@@69) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@5) addr@@69)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr@@69) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr@@69)) 1))))
 :qid |RecoveryAddresscvc5bpl.6421:15|
 :skolemid |169|
)) (and (=> (= (ControlFlow 0 224289) (- 0 307724)) (forall ((addr@@70 Int) ) (!  (=> (|$IsValid'address'| addr@@70) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@5) addr@@70) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@5) addr@@70)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr@@70) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr@@70)) 4))))
 :qid |RecoveryAddresscvc5bpl.6425:15|
 :skolemid |170|
))) (=> (forall ((addr@@71 Int) ) (!  (=> (|$IsValid'address'| addr@@71) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@5) addr@@71) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@5) addr@@71)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr@@71) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr@@71)) 4))))
 :qid |RecoveryAddresscvc5bpl.6425:15|
 :skolemid |170|
)) (and (=> (= (ControlFlow 0 224289) (- 0 307771)) (forall ((addr@@72 Int) ) (!  (=> (|$IsValid'address'| addr@@72) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@5) addr@@72) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@5) addr@@72)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr@@72) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr@@72)) 2))))
 :qid |RecoveryAddresscvc5bpl.6429:15|
 :skolemid |171|
))) (=> (forall ((addr@@73 Int) ) (!  (=> (|$IsValid'address'| addr@@73) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@5) addr@@73) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@5) addr@@73)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr@@73) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr@@73)) 2))))
 :qid |RecoveryAddresscvc5bpl.6429:15|
 :skolemid |171|
)) (and (=> (= (ControlFlow 0 224289) (- 0 307818)) (forall ((addr@@74 Int) ) (!  (=> (|$IsValid'address'| addr@@74) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@5) addr@@74) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@5) addr@@74)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr@@74) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr@@74)) 5))))
 :qid |RecoveryAddresscvc5bpl.6433:15|
 :skolemid |172|
))) (=> (forall ((addr@@75 Int) ) (!  (=> (|$IsValid'address'| addr@@75) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@5) addr@@75) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@5) addr@@75)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr@@75) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr@@75)) 5))))
 :qid |RecoveryAddresscvc5bpl.6433:15|
 :skolemid |172|
)) (=> (= (ControlFlow 0 224289) (- 0 307865)) (forall ((addr@@76 Int) ) (!  (=> (|$IsValid'address'| addr@@76) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory@2@@5) addr@@76) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory@2@@5) addr@@76)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr@@76) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr@@76)) 6))))
 :qid |RecoveryAddresscvc5bpl.6437:15|
 :skolemid |173|
))))))))))))))))))))))))))))))))))
(let ((anon11_Else_correct@@5  (=> (and (and (not |$temp_0'bool'@0@@5|) (= $1_Roles_RoleId_$memory@1@@6 ($Memory_124848 (|Store__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@6) false) (|contents#$Memory_124848| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2@@5 $1_Roles_RoleId_$memory@1@@6) (= (ControlFlow 0 223829) 224289))) anon7_correct@@3)))
(let ((anon11_Then_correct@@5  (=> (and (and |$temp_0'bool'@0@@5| (= $1_Roles_RoleId_$memory@0@@6 ($Memory_124848 (|Store__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@6) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@6) |$temp_0'$1_Roles_RoleId'@0@@5|)))) (and (= $1_Roles_RoleId_$memory@2@@5 $1_Roles_RoleId_$memory@0@@6) (= (ControlFlow 0 224303) 224289))) anon7_correct@@3)))
(let ((anon10_Else_correct@@4  (=> (not $t9@@6) (and (=> (= (ControlFlow 0 223815) 224303) anon11_Then_correct@@5) (=> (= (ControlFlow 0 223815) 223829) anon11_Else_correct@@5)))))
(let ((anon9_Else_correct@@3  (=> (not $t5@@6) (=> (and (|$IsValid'u64'| 3) (= $t8@@3 (|$addr#$signer| _$t1@@6))) (and (=> (= (ControlFlow 0 223809) (- 0 307357)) (=> (= 3 0) (= $t8@@3 173345816))) (=> (=> (= 3 0) (= $t8@@3 173345816)) (and (=> (= (ControlFlow 0 223809) (- 0 307373)) (=> (= 3 1) (= $t8@@3 186537453))) (=> (=> (= 3 1) (= $t8@@3 186537453)) (and (=> (= (ControlFlow 0 223809) (- 0 307389)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@6 (|$addr#$signer| _$t1@@6))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@6 (|$addr#$signer| _$t1@@6)) (=> (= $t9@@6 (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@6))) (and (=> (= (ControlFlow 0 223809) 224331) anon10_Then_correct@@4) (=> (= (ControlFlow 0 223809) 223815) anon10_Else_correct@@4)))))))))))))
(let ((anon0$1_correct@@7  (=> (and (|$IsValid'address'| (|$addr#$signer| _$t0@@7)) (|$IsValid'address'| (|$addr#$signer| _$t1@@6))) (=> (and (and (and (forall (($a_0@@9 Int) ) (! (let (($rsc@@9 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $a_0@@9)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@9))
 :qid |RecoveryAddresscvc5bpl.6238:20|
 :skolemid |167|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $a_0@@9))
)) (= $t2@@5 (|$addr#$signer| _$t0@@7))) (and (= $t3@@5 (|$addr#$signer| _$t0@@7)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@6 (|$addr#$signer| _$t1@@6)))) (and (and (= _$t0@@7 _$t0@@7) (= _$t1@@6 _$t1@@6)) (and (= $t4@@5 (|$addr#$signer| _$t0@@7)) (= $t5@@6  (or (or (or (not (= (|$addr#$signer| _$t0@@7) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t4@@5))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t4@@5)) 0))) (not (= (|$addr#$signer| _$t0@@7) 173345816))))))) (and (=> (= (ControlFlow 0 223731) 224655) anon9_Then_correct@@3) (=> (= (ControlFlow 0 223731) 223809) anon9_Else_correct@@3))))))
(let ((inline$$InitEventStore$0$anon0_correct@@7  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@9 T@$1_Event_EventHandle) ) (! (let ((stream@@8 (|Select__T@[$1_Event_EventHandle]Multiset_91859_| (|streams#$EventStore| $es) handle@@9)))
 (and (= (|l#Multiset_91859| stream@@8) 0) (forall ((v@@49 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_91859| stream@@8) v@@49) 0)
 :qid |RecoveryAddresscvc5bpl.134:13|
 :skolemid |2|
))))
 :qid |RecoveryAddresscvc5bpl.2787:13|
 :skolemid |79|
))) (= (ControlFlow 0 223577) 223731)) anon0$1_correct@@7)))
(let ((anon0_correct@@7  (=> (= (ControlFlow 0 307056) 223577) inline$$InitEventStore$0$anon0_correct@@7)))
anon0_correct@@7))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@6 () Bool)
(declare-fun $1_DualAttestation_Limit_$memory@1 () T@$Memory_124467)
(declare-fun _$t0@@8 () T@$signer)
(declare-fun $t6@@6 () Int)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory| () T@$Memory_143664)
(declare-fun |Select__T@[Int]$1_DualAttestation_Limit_| (|T@[Int]$1_DualAttestation_Limit| Int) T@$1_DualAttestation_Limit)
(declare-fun |Select__T@[Int]$1_DualAttestation_Credential_| (|T@[Int]$1_DualAttestation_Credential| Int) T@$1_DualAttestation_Credential)
(declare-fun $t8@0 () Int)
(declare-fun $abort_code@7 () Int)
(declare-fun $1_DualAttestation_Limit_$memory@0 () T@$Memory_124467)
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
(declare-fun $1_DiemConfig_Configuration_$memory () T@$Memory_138391)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory| () T@$Memory_138001)
(declare-fun |$1_Diem_Preburn'$1_XUS_XUS'_$memory| () T@$Memory_149233)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory| () T@$Memory_143600)
(declare-fun |$1_Diem_Preburn'$1_XDX_XDX'_$memory| () T@$Memory_149324)
(declare-fun |$1_Diem_Preburn'#0'_$memory| () T@$Memory_149415)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory| () T@$Memory_143800)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory| () T@$Memory_149642)
(declare-fun |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory| () T@$Memory_149741)
(declare-fun |$1_Diem_PreburnQueue'#0'_$memory| () T@$Memory_149840)
(declare-fun $1_XDX_Reserve_$memory () T@$Memory_159326)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory| () T@$Memory_156819)
(push 1)
(set-info :boogie-vc-id $1_DualAttestation_initialize$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 308137) (let ((anon37_Else_correct  (=> (not $abort_flag@6) (and (=> (= (ControlFlow 0 226744) (- 0 309714)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory@1) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory@1) 173345816)) (and (=> (= (ControlFlow 0 226744) (- 0 309729)) (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 226744) (- 0 309739)) (not (not (= (|$addr#$signer| _$t0@@8) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@8) 173345816))) (and (=> (= (ControlFlow 0 226744) (- 0 309753)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)) (and (=> (= (ControlFlow 0 226744) (- 0 309763)) (not (> $t6@@6 18446744073709551615))) (=> (not (> $t6@@6 18446744073709551615)) (and (=> (= (ControlFlow 0 226744) (- 0 309774)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 226744) (- 0 309784)) (forall ((addr1@@2 Int) ) (!  (=> (|$IsValid'address'| addr1@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@2) (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@2)))
 :qid |RecoveryAddresscvc5bpl.13065:15|
 :skolemid |252|
))) (=> (forall ((addr1@@3 Int) ) (!  (=> (|$IsValid'address'| addr1@@3) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@3) (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@3)))
 :qid |RecoveryAddresscvc5bpl.13065:15|
 :skolemid |252|
)) (and (=> (= (ControlFlow 0 226744) (- 0 309809)) (forall ((addr1@@4 Int) ) (!  (=> (|$IsValid'address'| addr1@@4) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@4)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@4))))
 :qid |RecoveryAddresscvc5bpl.13070:15|
 :skolemid |253|
))) (=> (forall ((addr1@@5 Int) ) (!  (=> (|$IsValid'address'| addr1@@5) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@5)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@5))))
 :qid |RecoveryAddresscvc5bpl.13070:15|
 :skolemid |253|
)) (and (=> (= (ControlFlow 0 226744) (- 0 309838)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory@1) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory@1) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)))) (and (=> (= (ControlFlow 0 226744) (- 0 309854)) (forall ((addr1@@6 Int) ) (!  (=> (|$IsValid'address'| addr1@@6) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@6) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@6)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@6)))))
 :qid |RecoveryAddresscvc5bpl.13080:15|
 :skolemid |254|
))) (=> (forall ((addr1@@7 Int) ) (!  (=> (|$IsValid'address'| addr1@@7) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@7) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@7)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@7)))))
 :qid |RecoveryAddresscvc5bpl.13080:15|
 :skolemid |254|
)) (=> (= (ControlFlow 0 226744) (- 0 309890)) (forall ((addr1@@8 Int) ) (!  (=> (|$IsValid'address'| addr1@@8) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@8) (= (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@8)) (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@8)))))
 :qid |RecoveryAddresscvc5bpl.13085:15|
 :skolemid |255|
))))))))))))))))))))))))))
(let ((L5_correct@@0  (and (=> (= (ControlFlow 0 225430) (- 0 309592)) (or (or (or (or (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (= (|$addr#$signer| _$t0@@8) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)) (> $t6@@6 18446744073709551615)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (=> (or (or (or (or (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (= (|$addr#$signer| _$t0@@8) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)) (> $t6@@6 18446744073709551615)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (=> (= (ControlFlow 0 225430) (- 0 309630)) (or (or (or (or (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t8@0)) (and (not (= (|$addr#$signer| _$t0@@8) 173345816)) (= 2 $t8@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816) (= 6 $t8@0))) (and (> $t6@@6 18446744073709551615) (= 8 $t8@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= 5 $t8@0))))))))
(let ((anon37_Then_correct  (=> (and (and $abort_flag@6 (= $abort_code@7 $abort_code@7)) (and (= $t8@0 $abort_code@7) (= (ControlFlow 0 226758) 225430))) L5_correct@@0)))
(let ((anon36_Then$1_correct  (=> (= $1_DualAttestation_Limit_$memory@1 $1_DualAttestation_Limit_$memory) (=> (and (= $abort_flag@6 true) (= $abort_code@7 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 226810) 226758) anon37_Then_correct) (=> (= (ControlFlow 0 226810) 226744) anon37_Else_correct))))))
(let ((anon36_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) (|$addr#$signer| _$t0@@8)) (= (ControlFlow 0 226808) 226810)) anon36_Then$1_correct)))
(let ((anon36_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) (|$addr#$signer| _$t0@@8))) (=> (and (and (= $1_DualAttestation_Limit_$memory@0 ($Memory_124467 (|Store__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) (|$addr#$signer| _$t0@@8) true) (|Store__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) (|$addr#$signer| _$t0@@8) $t25@0))) (= $1_DualAttestation_Limit_$memory@1 $1_DualAttestation_Limit_$memory@0)) (and (= $abort_flag@6 $abort_flag@5) (= $abort_code@7 $abort_code@6))) (and (=> (= (ControlFlow 0 226522) 226758) anon37_Then_correct) (=> (= (ControlFlow 0 226522) 226744) anon37_Else_correct))))))
(let ((anon35_Else_correct  (=> (and (not $abort_flag@5) (= $t25@0 ($1_DualAttestation_Limit inline$$CastU64$0$dst@1))) (and (=> (= (ControlFlow 0 226500) 226808) anon36_Then_correct) (=> (= (ControlFlow 0 226500) 226522) anon36_Else_correct)))))
(let ((anon35_Then_correct  (=> (and (and $abort_flag@5 (= $abort_code@6 $abort_code@6)) (and (= $t8@0 $abort_code@6) (= (ControlFlow 0 226824) 225430))) L5_correct@@0)))
(let ((inline$$CastU64$0$anon3_Then$1_correct  (=> (= $abort_code@6 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@5 true) (= inline$$CastU64$0$dst@1 inline$$CastU64$0$dst@0)) (and (=> (= (ControlFlow 0 226478) 226824) anon35_Then_correct) (=> (= (ControlFlow 0 226478) 226500) anon35_Else_correct))))))
(let ((inline$$CastU64$0$anon3_Then_correct  (=> (and (> inline$$MulU128$0$dst@2 $MAX_U64) (= (ControlFlow 0 226476) 226478)) inline$$CastU64$0$anon3_Then$1_correct)))
(let ((inline$$CastU64$0$anon3_Else_correct  (=> (and (and (>= $MAX_U64 inline$$MulU128$0$dst@2) (= $abort_code@6 $abort_code@5)) (and (= $abort_flag@5 $abort_flag@4) (= inline$$CastU64$0$dst@1 inline$$MulU128$0$dst@2))) (and (=> (= (ControlFlow 0 226428) 226824) anon35_Then_correct) (=> (= (ControlFlow 0 226428) 226500) anon35_Else_correct)))))
(let ((anon34_Then_correct  (=> inline$$Le$0$dst@1 (and (=> (= (ControlFlow 0 226484) 226476) inline$$CastU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 226484) 226428) inline$$CastU64$0$anon3_Else_correct)))))
(let ((anon34_Else_correct  (=> (and (and (not inline$$Le$0$dst@1) (= $t23@@0 $t23@@0)) (and (= $t8@0 $t23@@0) (= (ControlFlow 0 226353) 225430))) L5_correct@@0)))
(let ((anon33_Else$1_correct  (=> (|$IsValid'u64'| 1) (=> (and (and (|$IsValid'u64'| $t23@@0) (= $t23@@0 8)) (and (= $t23@@0 $t23@@0) (= inline$$Le$0$dst@1 inline$$Le$0$dst@1))) (and (=> (= (ControlFlow 0 226337) 226484) anon34_Then_correct) (=> (= (ControlFlow 0 226337) 226353) anon34_Else_correct))))))
(let ((inline$$Le$0$anon0_correct  (=> (and (= inline$$Le$0$dst@1 (<= inline$$MulU128$0$dst@2 18446744073709551615)) (= (ControlFlow 0 226301) 226337)) anon33_Else$1_correct)))
(let ((anon33_Else_correct  (=> (and (and (not $abort_flag@4) (= inline$$MulU128$0$dst@2 inline$$MulU128$0$dst@2)) (and (|$IsValid'u128'| 18446744073709551615) (= (ControlFlow 0 226307) 226301))) inline$$Le$0$anon0_correct)))
(let ((anon33_Then_correct  (=> (and (and $abort_flag@4 (= $abort_code@5 $abort_code@5)) (and (= $t8@0 $abort_code@5) (= (ControlFlow 0 226838) 225430))) L5_correct@@0)))
(let ((inline$$MulU128$0$anon3_Then$1_correct  (=> (= $abort_flag@4 true) (=> (and (= $abort_code@5 $EXEC_FAILURE_CODE) (= inline$$MulU128$0$dst@2 inline$$MulU128$0$dst@0)) (and (=> (= (ControlFlow 0 226233) 226838) anon33_Then_correct) (=> (= (ControlFlow 0 226233) 226307) anon33_Else_correct))))))
(let ((inline$$MulU128$0$anon3_Then_correct  (=> (and (> (* inline$$CastU128$0$dst@1 inline$$CastU128$1$dst@1) $MAX_U128) (= (ControlFlow 0 226231) 226233)) inline$$MulU128$0$anon3_Then$1_correct)))
(let ((inline$$MulU128$0$anon3_Else_correct  (=> (>= $MAX_U128 (* inline$$CastU128$0$dst@1 inline$$CastU128$1$dst@1)) (=> (and (and (= inline$$MulU128$0$dst@1 (* inline$$CastU128$0$dst@1 inline$$CastU128$1$dst@1)) (= $abort_flag@4 $abort_flag@3)) (and (= $abort_code@5 $abort_code@4) (= inline$$MulU128$0$dst@2 inline$$MulU128$0$dst@1))) (and (=> (= (ControlFlow 0 226179) 226838) anon33_Then_correct) (=> (= (ControlFlow 0 226179) 226307) anon33_Else_correct))))))
(let ((anon32_Else_correct  (=> (not $abort_flag@3) (and (=> (= (ControlFlow 0 226239) 226231) inline$$MulU128$0$anon3_Then_correct) (=> (= (ControlFlow 0 226239) 226179) inline$$MulU128$0$anon3_Else_correct)))))
(let ((anon32_Then_correct  (=> (and (and $abort_flag@3 (= $abort_code@4 $abort_code@4)) (and (= $t8@0 $abort_code@4) (= (ControlFlow 0 226852) 225430))) L5_correct@@0)))
(let ((inline$$CastU128$1$anon3_Then$1_correct  (=> (= $abort_code@4 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@3 true) (= inline$$CastU128$1$dst@1 inline$$CastU128$1$dst@0)) (and (=> (= (ControlFlow 0 226072) 226852) anon32_Then_correct) (=> (= (ControlFlow 0 226072) 226239) anon32_Else_correct))))))
(let ((inline$$CastU128$1$anon3_Then_correct  (=> (and (> |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$ret0@1| $MAX_U128) (= (ControlFlow 0 226070) 226072)) inline$$CastU128$1$anon3_Then$1_correct)))
(let ((inline$$CastU128$1$anon3_Else_correct  (=> (and (and (>= $MAX_U128 |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$ret0@1|) (= $abort_code@4 $abort_code@3)) (and (= $abort_flag@3 $abort_flag@2) (= inline$$CastU128$1$dst@1 |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$ret0@1|))) (and (=> (= (ControlFlow 0 226022) 226852) anon32_Then_correct) (=> (= (ControlFlow 0 226022) 226239) anon32_Else_correct)))))
(let ((anon31_Else_correct  (=> (not $abort_flag@2) (and (=> (= (ControlFlow 0 226078) 226070) inline$$CastU128$1$anon3_Then_correct) (=> (= (ControlFlow 0 226078) 226022) inline$$CastU128$1$anon3_Else_correct)))))
(let ((anon31_Then_correct  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= $t8@0 $abort_code@3) (= (ControlFlow 0 226866) 225430))) L5_correct@@0)))
(let ((|inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$L2_correct|  (=> (= $abort_flag@2 true) (=> (and (= $abort_code@3 |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$t1@1|) (= |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$ret0@1| |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$ret0@0|)) (and (=> (= (ControlFlow 0 225861) 226866) anon31_Then_correct) (=> (= (ControlFlow 0 225861) 226078) anon31_Else_correct))))))
(let ((|inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$anon10_Then_correct|  (=> (and (and $abort_flag@1 (= $abort_code@2 $abort_code@2)) (and (= |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$t1@1| $abort_code@2) (= (ControlFlow 0 225855) 225861))) |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$L2_correct|)))
(let ((|inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$anon8_Then_correct|  (=> |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$t0@0| (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= 5 |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$t1@0|)) (= |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$t1@0| |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$t1@0|)) (and (= |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$t1@1| |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$t1@0|) (= (ControlFlow 0 225939) 225861))) |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$L2_correct|))))
(let ((|inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$anon10_Else_correct|  (=> (and (not $abort_flag@1) (= |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$t4@1| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$t3@2|))) (=> (and (and (= |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$t4@1| |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$t4@1|) (= $abort_flag@2 $abort_flag@1)) (and (= $abort_code@3 $abort_code@2) (= |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$ret0@1| |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$t4@1|))) (and (=> (= (ControlFlow 0 225841) 226866) anon31_Then_correct) (=> (= (ControlFlow 0 225841) 226078) anon31_Else_correct))))))
(let ((|inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$anon9_Then$1_correct|  (=> (= $abort_code@2 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@1 true) (= |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$t3@2| |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$t3@0|)) (and (=> (= (ControlFlow 0 225913) 225855) |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$anon10_Then_correct|) (=> (= (ControlFlow 0 225913) 225841) |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$anon10_Else_correct|))))))
(let ((|inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$anon9_Then_correct|  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (ControlFlow 0 225911) 225913)) |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$anon9_Then$1_correct|)))
(let ((|inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$anon9_Else_correct|  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816) (=> (and (and (= |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$t3@1| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= $abort_code@2 $abort_code@1@@1)) (and (= $abort_flag@1 $abort_flag@0@@1) (= |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$t3@2| |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$t3@1|))) (and (=> (= (ControlFlow 0 225819) 225855) |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$anon10_Then_correct|) (=> (= (ControlFlow 0 225819) 225841) |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$anon10_Else_correct|))))))
(let ((|inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$anon8_Else_correct|  (=> (and (not |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$t0@0|) (|$IsValid'address'| 173345816)) (and (=> (= (ControlFlow 0 225805) 225911) |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$anon9_Then_correct|) (=> (= (ControlFlow 0 225805) 225819) |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$anon9_Else_correct|)))))
(let ((|inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$anon0_correct|  (=> (= |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$$t0@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 225791) 225939) |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$anon8_Then_correct|) (=> (= (ControlFlow 0 225791) 225805) |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$anon8_Else_correct|)))))
(let ((anon30_Else_correct  (=> (and (not $abort_flag@0@@1) (= (ControlFlow 0 225945) 225791)) |inline$$1_Diem_scaling_factor'$1_XDX_XDX'$0$anon0_correct|)))
(let ((anon30_Then_correct  (=> (and (and $abort_flag@0@@1 (= $abort_code@1@@1 $abort_code@1@@1)) (and (= $t8@0 $abort_code@1@@1) (= (ControlFlow 0 226880) 225430))) L5_correct@@0)))
(let ((inline$$CastU128$0$anon3_Then$1_correct  (=> (= $abort_flag@0@@1 true) (=> (and (= $abort_code@1@@1 $EXEC_FAILURE_CODE) (= inline$$CastU128$0$dst@1 inline$$CastU128$0$dst@0)) (and (=> (= (ControlFlow 0 225559) 226880) anon30_Then_correct) (=> (= (ControlFlow 0 225559) 225945) anon30_Else_correct))))))
(let ((inline$$CastU128$0$anon3_Then_correct  (=> (and (> 1000 $MAX_U128) (= (ControlFlow 0 225557) 225559)) inline$$CastU128$0$anon3_Then$1_correct)))
(let ((inline$$CastU128$0$anon3_Else_correct  (=> (and (and (>= $MAX_U128 1000) (= $abort_flag@0@@1 false)) (and (= $abort_code@1@@1 $abort_code@0@@1) (= inline$$CastU128$0$dst@1 1000))) (and (=> (= (ControlFlow 0 225509) 226880) anon30_Then_correct) (=> (= (ControlFlow 0 225509) 225945) anon30_Else_correct)))))
(let ((anon29_Then_correct  (=> (and inline$$Not$0$dst@1@@0 (|$IsValid'u64'| 1000)) (and (=> (= (ControlFlow 0 225565) 225557) inline$$CastU128$0$anon3_Then_correct) (=> (= (ControlFlow 0 225565) 225509) inline$$CastU128$0$anon3_Else_correct)))))
(let ((anon29_Else_correct  (=> (and (and (not inline$$Not$0$dst@1@@0) (= $t14@@0 $t14@@0)) (and (= $t8@0 $t14@@0) (= (ControlFlow 0 225298) 225430))) L5_correct@@0)))
(let ((anon28_Else$1_correct  (=> (|$IsValid'u64'| 1) (=> (and (and (|$IsValid'u64'| $t14@@0) (= $t14@@0 6)) (and (= $t14@@0 $t14@@0) (= inline$$Not$0$dst@1@@0 inline$$Not$0$dst@1@@0))) (and (=> (= (ControlFlow 0 225282) 225565) anon29_Then_correct) (=> (= (ControlFlow 0 225282) 225298) anon29_Else_correct))))))
(let ((inline$$Not$0$anon0_correct@@0  (=> (and (= inline$$Not$0$dst@1@@0  (not $t11@0@@1)) (= (ControlFlow 0 225246) 225282)) anon28_Else$1_correct)))
(let ((anon28_Else_correct  (=> (and (and (not $t9@@7) (|$IsValid'address'| 173345816)) (and (= $t11@0@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)) (= (ControlFlow 0 225252) 225246))) inline$$Not$0$anon0_correct@@0)))
(let ((anon28_Then_correct  (=> $t9@@7 (=> (and (and (and (not (= (|$addr#$signer| _$t0@@8) 173345816)) (= 2 $t8@@4)) (= $t8@@4 $t8@@4)) (and (= $t8@0 $t8@@4) (= (ControlFlow 0 226910) 225430))) L5_correct@@0))))
(let ((anon27_Else_correct  (=> (and (not $t7@@1) (= $t9@@7  (not (= (|$addr#$signer| _$t0@@8) 173345816)))) (and (=> (= (ControlFlow 0 225196) 226910) anon28_Then_correct) (=> (= (ControlFlow 0 225196) 225252) anon28_Else_correct)))))
(let ((anon27_Then_correct  (=> $t7@@1 (=> (and (and (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t8@@4)) (= $t8@@4 $t8@@4)) (and (= $t8@0 $t8@@4) (= (ControlFlow 0 226936) 225430))) L5_correct@@0))))
(let ((anon0$1_correct@@8  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_138391| $1_DiemConfig_Configuration_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_138001| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816))) (=> (and (and (forall ((addr@@77 Int) ) (!  (=> (|$IsValid'address'| addr@@77) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_149233| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr@@77) (|Select__T@[Int]Bool_| (|domain#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |RecoveryAddresscvc5bpl.12730:22|
 :skolemid |243|
)) (forall ((addr@@78 Int) ) (!  (=> (|$IsValid'address'| addr@@78) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_149324| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr@@78) (|Select__T@[Int]Bool_| (|domain#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |RecoveryAddresscvc5bpl.12730:222|
 :skolemid |244|
))) (forall ((addr@@79 Int) ) (!  (=> (|$IsValid'address'| addr@@79) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_149415| |$1_Diem_Preburn'#0'_$memory|) addr@@79) (|Select__T@[Int]Bool_| (|domain#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |RecoveryAddresscvc5bpl.12730:423|
 :skolemid |245|
))) (=> (and (and (and (and (and (forall ((addr@@80 Int) ) (!  (=> (|$IsValid'address'| addr@@80) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_149642| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr@@80) (|Select__T@[Int]Bool_| (|domain#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |RecoveryAddresscvc5bpl.12734:22|
 :skolemid |246|
)) (forall ((addr@@81 Int) ) (!  (=> (|$IsValid'address'| addr@@81) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_149741| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr@@81) (|Select__T@[Int]Bool_| (|domain#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |RecoveryAddresscvc5bpl.12734:227|
 :skolemid |247|
))) (forall ((addr@@82 Int) ) (!  (=> (|$IsValid'address'| addr@@82) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_149840| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@82) (|Select__T@[Int]Bool_| (|domain#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |RecoveryAddresscvc5bpl.12734:433|
 :skolemid |248|
))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_159326| $1_XDX_Reserve_$memory) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_156819| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) 173345816)))) (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)) (|$IsValid'address'| (|$addr#$signer| _$t0@@8))) (and (forall (($a_0@@10 Int) ) (! (let (($rsc@@10 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@10)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@10))
 :qid |RecoveryAddresscvc5bpl.12756:20|
 :skolemid |249|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@10))
)) (forall (($a_0@@11 Int) ) (! (let (($rsc@@11 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) $a_0@@11)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| $rsc@@11) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $rsc@@11)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $rsc@@11) 10000000000))))
 :qid |RecoveryAddresscvc5bpl.12760:20|
 :skolemid |250|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) $a_0@@11))
)))) (and (and (forall (($a_0@@12 Int) ) (! (let (($rsc@@12 (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) $a_0@@12)))
(|$IsValid'$1_DualAttestation_Limit'| $rsc@@12))
 :qid |RecoveryAddresscvc5bpl.12764:20|
 :skolemid |251|
 :pattern ( (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) $a_0@@12))
)) (= $t6@@6 (* 1000 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (and (= _$t0@@8 _$t0@@8) (= $t7@@1  (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))))) (and (=> (= (ControlFlow 0 225174) 226936) anon27_Then_correct) (=> (= (ControlFlow 0 225174) 225196) anon27_Else_correct))))))))
(let ((inline$$InitEventStore$0$anon0_correct@@8  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@10 T@$1_Event_EventHandle) ) (! (let ((stream@@9 (|Select__T@[$1_Event_EventHandle]Multiset_91859_| (|streams#$EventStore| $es) handle@@10)))
 (and (= (|l#Multiset_91859| stream@@9) 0) (forall ((v@@50 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_91859| stream@@9) v@@50) 0)
 :qid |RecoveryAddresscvc5bpl.134:13|
 :skolemid |2|
))))
 :qid |RecoveryAddresscvc5bpl.2787:13|
 :skolemid |79|
))) (= (ControlFlow 0 224818) 225174)) anon0$1_correct@@8)))
(let ((anon0_correct@@8  (=> (= (ControlFlow 0 308137) 224818) inline$$InitEventStore$0$anon0_correct@@8)))
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
 (=> (= (ControlFlow 0 0) 309932) (let ((anon12_Else_correct@@1  (=> (not $abort_flag@0@@2) (=> (and (= $t8@0@@0 (|$human_name#$1_DualAttestation_Credential| $t7@1)) (= $t8@0@@0 $t8@0@@0)) (and (=> (= (ControlFlow 0 227483) (- 0 310256)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) _$t0@@9)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) _$t0@@9))) (and (=> (= (ControlFlow 0 227483) (- 0 310267)) (= $t8@0@@0 (|$human_name#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) _$t0@@9)))) (=> (= $t8@0@@0 (|$human_name#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) _$t0@@9))) (and (=> (= (ControlFlow 0 227483) (- 0 310280)) (forall ((addr1@@9 Int) ) (!  (=> (|$IsValid'address'| addr1@@9) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@9) (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@9)))
 :qid |RecoveryAddresscvc5bpl.13241:15|
 :skolemid |258|
))) (=> (forall ((addr1@@10 Int) ) (!  (=> (|$IsValid'address'| addr1@@10) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@10) (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@10)))
 :qid |RecoveryAddresscvc5bpl.13241:15|
 :skolemid |258|
)) (and (=> (= (ControlFlow 0 227483) (- 0 310305)) (forall ((addr1@@11 Int) ) (!  (=> (|$IsValid'address'| addr1@@11) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@11)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@11))))
 :qid |RecoveryAddresscvc5bpl.13246:15|
 :skolemid |259|
))) (=> (forall ((addr1@@12 Int) ) (!  (=> (|$IsValid'address'| addr1@@12) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@12)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@12))))
 :qid |RecoveryAddresscvc5bpl.13246:15|
 :skolemid |259|
)) (and (=> (= (ControlFlow 0 227483) (- 0 310334)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)))) (and (=> (= (ControlFlow 0 227483) (- 0 310351)) (forall ((addr1@@13 Int) ) (!  (=> (|$IsValid'address'| addr1@@13) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@13) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@13)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@13)))))
 :qid |RecoveryAddresscvc5bpl.13256:15|
 :skolemid |260|
))) (=> (forall ((addr1@@14 Int) ) (!  (=> (|$IsValid'address'| addr1@@14) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@14) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@14)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@14)))))
 :qid |RecoveryAddresscvc5bpl.13256:15|
 :skolemid |260|
)) (=> (= (ControlFlow 0 227483) (- 0 310387)) (forall ((addr1@@15 Int) ) (!  (=> (|$IsValid'address'| addr1@@15) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@15) (= (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@15)) (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@15)))))
 :qid |RecoveryAddresscvc5bpl.13261:15|
 :skolemid |261|
)))))))))))))))))))
(let ((L3_correct@@0  (and (=> (= (ControlFlow 0 227271) (- 0 310209)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) _$t0@@9))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) _$t0@@9)) (=> (= (ControlFlow 0 227271) (- 0 310215)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) _$t0@@9)) (= 5 $t6@0@@0)))))))
(let ((anon12_Then_correct@@1  (=> (and (and $abort_flag@0@@2 (= $abort_code@1@@2 $abort_code@1@@2)) (and (= $t6@0@@0 $abort_code@1@@2) (= (ControlFlow 0 227497) 227271))) L3_correct@@0)))
(let ((anon11_Then$1_correct@@0  (=> (= $t7@1 $t7@@2) (=> (and (= $abort_flag@0@@2 true) (= $abort_code@1@@2 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 227549) 227497) anon12_Then_correct@@1) (=> (= (ControlFlow 0 227549) 227483) anon12_Else_correct@@1))))))
(let ((anon11_Then_correct@@6  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) _$t0@@9)) (= (ControlFlow 0 227547) 227549)) anon11_Then$1_correct@@0)))
(let ((anon11_Else_correct@@6  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) _$t0@@9) (=> (and (and (= $t7@0 (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) _$t0@@9)) (= $t7@1 $t7@0)) (and (= $abort_flag@0@@2 false) (= $abort_code@1@@2 $abort_code@0@@2))) (and (=> (= (ControlFlow 0 227289) 227497) anon12_Then_correct@@1) (=> (= (ControlFlow 0 227289) 227483) anon12_Else_correct@@1))))))
(let ((anon10_Then_correct@@5  (=> $t3@0 (and (=> (= (ControlFlow 0 227275) 227547) anon11_Then_correct@@6) (=> (= (ControlFlow 0 227275) 227289) anon11_Else_correct@@6)))))
(let ((anon10_Else_correct@@5  (=> (and (and (not $t3@0) (= $t5@@7 $t5@@7)) (and (= $t6@0@@0 $t5@@7) (= (ControlFlow 0 227239) 227271))) L3_correct@@0)))
(let ((anon0$1_correct@@9  (=> (and (forall ((addr1@@16 Int) ) (!  (=> (|$IsValid'address'| addr1@@16) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@16) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@16) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@16)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@16) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@16)) 2)))))
 :qid |RecoveryAddresscvc5bpl.13138:20|
 :skolemid |256|
)) (|$IsValid'address'| _$t0@@9)) (=> (and (and (and (forall (($a_0@@13 Int) ) (! (let (($rsc@@13 (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) $a_0@@13)))
(|$IsValid'$1_DualAttestation_Credential'| $rsc@@13))
 :qid |RecoveryAddresscvc5bpl.13145:20|
 :skolemid |257|
 :pattern ( (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) $a_0@@13))
)) (= _$t0@@9 _$t0@@9)) (and (= $t3@0 (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) _$t0@@9)) (|$IsValid'u64'| 0))) (and (and (|$IsValid'u64'| $t5@@7) (= $t5@@7 5)) (and (= $t5@@7 $t5@@7) (= $t3@0 $t3@0)))) (and (=> (= (ControlFlow 0 227223) 227275) anon10_Then_correct@@5) (=> (= (ControlFlow 0 227223) 227239) anon10_Else_correct@@5))))))
(let ((inline$$InitEventStore$0$anon0_correct@@9  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@11 T@$1_Event_EventHandle) ) (! (let ((stream@@10 (|Select__T@[$1_Event_EventHandle]Multiset_91859_| (|streams#$EventStore| $es) handle@@11)))
 (and (= (|l#Multiset_91859| stream@@10) 0) (forall ((v@@51 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_91859| stream@@10) v@@51) 0)
 :qid |RecoveryAddresscvc5bpl.134:13|
 :skolemid |2|
))))
 :qid |RecoveryAddresscvc5bpl.2787:13|
 :skolemid |79|
))) (= (ControlFlow 0 227102) 227223)) anon0$1_correct@@9)))
(let ((anon0_correct@@9  (=> (= (ControlFlow 0 309932) 227102) inline$$InitEventStore$0$anon0_correct@@9)))
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
(declare-fun $1_VASP_ParentVASP_$memory () T@$Memory_161035)
(declare-fun $1_VASP_ChildVASP_$memory () T@$Memory_160971)
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
 (=> (= (ControlFlow 0 0) 310434) (let ((L8_correct@@0  (and (=> (= (ControlFlow 0 229277) (- 0 311551)) (or (or (or (or (or (or (and (= (seq.len _$t4) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (and (= (seq.len _$t4) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (= (seq.len _$t4) 0) (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@7) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@7) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@7) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) 18446744073709551615))) (and (or (not (= (seq.len _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@10 _$t1@@7))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@10) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@10)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@7) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@10) _$t0@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@10))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7)))))))) (= (seq.len (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7))) _$t1@@7)))) 0))) (and (or (not (= (seq.len _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@10 _$t1@@7))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@10) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@10)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@7) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@10) _$t0@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@10))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7)))))))) (= (seq.len (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7))) _$t1@@7)))) 0))) (and (or (not (= (seq.len _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@10 _$t1@@7))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@10) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@10)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@7) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@10) _$t0@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@10))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7)))))))) (not (let ((payee_compliance_key (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7))) _$t1@@7)))))
 (and (and (= (seq.len _$t4) 64) (not (= (seq.len payee_compliance_key) 0))) ($1_Signature_$ed25519_verify _$t4 payee_compliance_key ($1_DualAttestation_spec_dual_attestation_message _$t0@@10 _$t3 _$t2@@0))))))) (and (or (not (= (seq.len _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@10 _$t1@@7))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@10) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@10)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@7) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@10) _$t0@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@10))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7)))))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7))) _$t1@@7)))))) (=> (or (or (or (or (or (or (and (= (seq.len _$t4) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (and (= (seq.len _$t4) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (= (seq.len _$t4) 0) (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@7) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@7) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@7) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) 18446744073709551615))) (and (or (not (= (seq.len _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@10 _$t1@@7))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@10) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@10)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@7) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@10) _$t0@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@10))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7)))))))) (= (seq.len (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7))) _$t1@@7)))) 0))) (and (or (not (= (seq.len _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@10 _$t1@@7))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@10) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@10)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@7) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@10) _$t0@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@10))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7)))))))) (= (seq.len (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7))) _$t1@@7)))) 0))) (and (or (not (= (seq.len _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@10 _$t1@@7))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@10) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@10)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@7) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@10) _$t0@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@10))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7)))))))) (not (let ((payee_compliance_key@@0 (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7))) _$t1@@7)))))
 (and (and (= (seq.len _$t4) 64) (not (= (seq.len payee_compliance_key@@0) 0))) ($1_Signature_$ed25519_verify _$t4 payee_compliance_key@@0 ($1_DualAttestation_spec_dual_attestation_message _$t0@@10 _$t3 _$t2@@0))))))) (and (or (not (= (seq.len _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@10 _$t1@@7))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@10) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@10)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@7) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@10) _$t0@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@10))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7)))))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7))) _$t1@@7))))) (=> (= (ControlFlow 0 229277) (- 0 311739)) (or (or (or (or (or (or (and (and (= (seq.len _$t4) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (= 5 $t8@0@@1)) (and (and (= (seq.len _$t4) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (= 5 $t8@0@@1))) (and (and (= (seq.len _$t4) 0) (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@7) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@7) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@7) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) 18446744073709551615)) (= 8 $t8@0@@1))) (and (and (or (not (= (seq.len _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@10 _$t1@@7))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@10) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@10)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@7) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@10) _$t0@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@10))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7)))))))) (= (seq.len (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7))) _$t1@@7)))) 0)) (= 1 $t8@0@@1))) (and (and (or (not (= (seq.len _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@10 _$t1@@7))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@10) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@10)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@7) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@10) _$t0@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@10))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7)))))))) (= (seq.len (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7))) _$t1@@7)))) 0)) (= 1 $t8@0@@1))) (and (and (or (not (= (seq.len _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@10 _$t1@@7))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@10) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@10)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@7) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@10) _$t0@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@10))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7)))))))) (not (let ((payee_compliance_key@@1 (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7))) _$t1@@7)))))
 (and (and (= (seq.len _$t4) 64) (not (= (seq.len payee_compliance_key@@1) 0))) ($1_Signature_$ed25519_verify _$t4 payee_compliance_key@@1 ($1_DualAttestation_spec_dual_attestation_message _$t0@@10 _$t3 _$t2@@0)))))) (= 7 $t8@0@@1))) (and (and (or (not (= (seq.len _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@10 _$t1@@7))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@10) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@10)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@7) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@10) _$t0@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@10))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7)))))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7))) _$t1@@7)))) (= 5 $t8@0@@1))))))))
(let ((anon18_Then_correct  (=> $t14@@1 (=> (and (and (or (or (or (and (= (seq.len (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7))) _$t1@@7)))) 0) (= 1 $t8@@5)) (and (= (seq.len (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7))) _$t1@@7)))) 0) (= 1 $t8@@5))) (and (not (let ((payee_compliance_key@@2 (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7))) _$t1@@7)))))
 (and (and (= (seq.len _$t4) 64) (not (= (seq.len payee_compliance_key@@2) 0))) ($1_Signature_$ed25519_verify _$t4 payee_compliance_key@@2 ($1_DualAttestation_spec_dual_attestation_message _$t0@@10 _$t3 _$t2@@0))))) (= 7 $t8@@5))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7))) _$t1@@7))) (= 5 $t8@@5))) (= $t8@@5 $t8@@5)) (and (= $t8@0@@1 $t8@@5) (= (ControlFlow 0 228721) 229277))) L8_correct@@0))))
(let ((anon16_Then_correct@@0  (=> $t13 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)) (= 5 $t8@@5)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 $t8@@5))) (and (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t11@@0) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t11@@0) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t11@@0) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) 18446744073709551615) (= 8 $t8@@5))) (= $t8@@5 $t8@@5)) (and (= $t8@0@@1 $t8@@5) (= (ControlFlow 0 229339) 229277))) L8_correct@@0))))
(let ((L6_correct  (and (=> (= (ControlFlow 0 228525) (- 0 311326)) (not (and (= (seq.len _$t4) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))))) (=> (not (and (= (seq.len _$t4) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)))) (and (=> (= (ControlFlow 0 228525) (- 0 311345)) (not (and (= (seq.len _$t4) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))) (=> (not (and (= (seq.len _$t4) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 228525) (- 0 311364)) (not (and (= (seq.len _$t4) 0) (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@7) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@7) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@7) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) 18446744073709551615)))) (=> (not (and (= (seq.len _$t4) 0) (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@7) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@7) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@7) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) 18446744073709551615))) (and (=> (= (ControlFlow 0 228525) (- 0 311387)) (not (and (or (not (= (seq.len _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@10 _$t1@@7))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@10) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@10)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@7) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@10) _$t0@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@10))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7)))))))) (= (seq.len (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7))) _$t1@@7)))) 0)))) (=> (not (and (or (not (= (seq.len _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@10 _$t1@@7))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@10) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@10)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@7) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@10) _$t0@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@10))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7)))))))) (= (seq.len (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7))) _$t1@@7)))) 0))) (and (=> (= (ControlFlow 0 228525) (- 0 311424)) (not (and (or (not (= (seq.len _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@10 _$t1@@7))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@10) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@10)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@7) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@10) _$t0@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@10))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7)))))))) (= (seq.len (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7))) _$t1@@7)))) 0)))) (=> (not (and (or (not (= (seq.len _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@10 _$t1@@7))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@10) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@10)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@7) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@10) _$t0@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@10))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7)))))))) (= (seq.len (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7))) _$t1@@7)))) 0))) (and (=> (= (ControlFlow 0 228525) (- 0 311461)) (not (and (or (not (= (seq.len _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@10 _$t1@@7))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@10) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@10)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@7) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@10) _$t0@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@10))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7)))))))) (not (let ((payee_compliance_key@@3 (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7))) _$t1@@7)))))
 (and (and (= (seq.len _$t4) 64) (not (= (seq.len payee_compliance_key@@3) 0))) ($1_Signature_$ed25519_verify _$t4 payee_compliance_key@@3 ($1_DualAttestation_spec_dual_attestation_message _$t0@@10 _$t3 _$t2@@0)))))))) (=> (not (and (or (not (= (seq.len _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@10 _$t1@@7))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@10) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@10)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@7) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@10) _$t0@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@10))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7)))))))) (not (let ((payee_compliance_key@@4 (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7))) _$t1@@7)))))
 (and (and (= (seq.len _$t4) 64) (not (= (seq.len payee_compliance_key@@4) 0))) ($1_Signature_$ed25519_verify _$t4 payee_compliance_key@@4 ($1_DualAttestation_spec_dual_attestation_message _$t0@@10 _$t3 _$t2@@0))))))) (=> (= (ControlFlow 0 228525) (- 0 311500)) (not (and (or (not (= (seq.len _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@10 _$t1@@7))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@10) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@10)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@7) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@10) _$t0@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@10))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7)))))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7))) _$t1@@7))))))))))))))))))))
(let ((anon18_Else_correct  (=> (and (not $t14@@1) (= (ControlFlow 0 228609) 228525)) L6_correct)))
(let ((anon17_Then_correct@@0  (=> (and $t5@0 (= $t14@@1  (or (or (or (= (seq.len (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7))) _$t1@@7)))) 0) (= (seq.len (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7))) _$t1@@7)))) 0)) (not (let ((payee_compliance_key@@5 (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7))) _$t1@@7)))))
 (and (and (= (seq.len _$t4) 64) (not (= (seq.len payee_compliance_key@@5) 0))) ($1_Signature_$ed25519_verify _$t4 payee_compliance_key@@5 ($1_DualAttestation_spec_dual_attestation_message _$t0@@10 _$t3 _$t2@@0)))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7))) _$t1@@7)))))) (and (=> (= (ControlFlow 0 228601) 228721) anon18_Then_correct) (=> (= (ControlFlow 0 228601) 228609) anon18_Else_correct)))))
(let ((anon17_Else_correct@@0  (=> (and (not $t5@0) (= (ControlFlow 0 228259) 228525)) L6_correct)))
(let ((anon16_Else_correct@@0  (=> (and (and (not $t13) (= $t12@@0  (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@10 _$t1@@7))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@10) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@10)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@7) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@10) _$t0@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@10))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@7) _$t1@@7 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@7))))))))) (and (= $t12@@0 $t12@@0) (= $t5@0 $t12@@0))) (and (=> (= (ControlFlow 0 228251) 228601) anon17_Then_correct@@0) (=> (= (ControlFlow 0 228251) 228259) anon17_Else_correct@@0)))))
(let ((anon15_Else_correct@@0  (=> (not inline$$Not$0$dst@1@@1) (=> (and (= $t11@@0 (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (= $t13  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t11@@0) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t11@@0) 1) _$t2@@0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t11@@0) 2) (div _$t2@@0 2) (+ 18446744073709551615 1)))) 18446744073709551615)))) (and (=> (= (ControlFlow 0 228211) 229339) anon16_Then_correct@@0) (=> (= (ControlFlow 0 228211) 228251) anon16_Else_correct@@0))))))
(let ((anon15_Then_correct@@0  (=> inline$$Not$0$dst@1@@1 (=> (and (= true true) (= $t5@0 true)) (and (=> (= (ControlFlow 0 229357) 228601) anon17_Then_correct@@0) (=> (= (ControlFlow 0 229357) 228259) anon17_Else_correct@@0))))))
(let ((inline$$Not$0$anon0_correct@@1  (=> (= inline$$Not$0$dst@1@@1  (not |inline$$1_Vector_is_empty'u8'$0$b@1|)) (and (=> (= (ControlFlow 0 228155) 229357) anon15_Then_correct@@0) (=> (= (ControlFlow 0 228155) 228211) anon15_Else_correct@@0)))))
(let ((anon14_Else_correct@@1  (=> (and (not false) (= (ControlFlow 0 228161) 228155)) inline$$Not$0$anon0_correct@@1)))
(let ((anon14_Then_correct@@1 true))
(let ((|inline$$1_Vector_is_empty'u8'$0$anon0_correct|  (=> (= |inline$$1_Vector_is_empty'u8'$0$b@1| (= (seq.len _$t4) 0)) (and (=> (= (ControlFlow 0 228111) 229371) anon14_Then_correct@@1) (=> (= (ControlFlow 0 228111) 228161) anon14_Else_correct@@1)))))
(let ((anon0$1_correct@@10  (=> (and (and (forall ((addr@@83 Int) ) (!  (=> (|$IsValid'address'| addr@@83) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_149233| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr@@83) (|Select__T@[Int]Bool_| (|domain#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |RecoveryAddresscvc5bpl.13332:22|
 :skolemid |262|
)) (forall ((addr@@84 Int) ) (!  (=> (|$IsValid'address'| addr@@84) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_149324| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr@@84) (|Select__T@[Int]Bool_| (|domain#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |RecoveryAddresscvc5bpl.13332:222|
 :skolemid |263|
))) (forall ((addr@@85 Int) ) (!  (=> (|$IsValid'address'| addr@@85) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_149415| |$1_Diem_Preburn'#0'_$memory|) addr@@85) (|Select__T@[Int]Bool_| (|domain#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |RecoveryAddresscvc5bpl.13332:423|
 :skolemid |264|
))) (=> (and (and (and (forall ((addr@@86 Int) ) (!  (=> (|$IsValid'address'| addr@@86) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_149642| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr@@86) (|Select__T@[Int]Bool_| (|domain#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |RecoveryAddresscvc5bpl.13336:22|
 :skolemid |265|
)) (forall ((addr@@87 Int) ) (!  (=> (|$IsValid'address'| addr@@87) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_149741| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr@@87) (|Select__T@[Int]Bool_| (|domain#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |RecoveryAddresscvc5bpl.13336:227|
 :skolemid |266|
))) (forall ((addr@@88 Int) ) (!  (=> (|$IsValid'address'| addr@@88) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_149840| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@88) (|Select__T@[Int]Bool_| (|domain#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |RecoveryAddresscvc5bpl.13336:433|
 :skolemid |267|
))) (and (and (forall ((child_addr Int) ) (!  (=> (|$IsValid'address'| child_addr) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) child_addr) (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) child_addr)))))
 :qid |RecoveryAddresscvc5bpl.13340:20|
 :skolemid |268|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (and (forall ((addr1@@17 Int) ) (!  (=> (|$IsValid'address'| addr1@@17) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@17) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@17) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@17)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@17) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@17)) 2)))))
 :qid |RecoveryAddresscvc5bpl.13348:20|
 :skolemid |269|
)) (|$IsValid'address'| _$t0@@10)))) (=> (and (and (and (and (|$IsValid'address'| _$t1@@7) (|$IsValid'u64'| _$t2@@0)) (and (|$IsValid'vec'u8''| _$t3) (|$IsValid'vec'u8''| _$t4))) (and (and (forall (($a_0@@14 Int) ) (! (let (($rsc@@14 (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0@@14)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'#0''| $rsc@@14) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc@@14)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc@@14) 10000000000))))
 :qid |RecoveryAddresscvc5bpl.13366:20|
 :skolemid |270|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0@@14))
)) (forall (($a_0@@15 Int) ) (! (let (($rsc@@15 (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) $a_0@@15)))
(|$IsValid'$1_VASP_ChildVASP'| $rsc@@15))
 :qid |RecoveryAddresscvc5bpl.13370:20|
 :skolemid |271|
 :pattern ( (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) $a_0@@15))
))) (and (forall (($a_0@@16 Int) ) (! (let (($rsc@@16 (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_161035| $1_VASP_ParentVASP_$memory) $a_0@@16)))
(|$IsValid'$1_VASP_ParentVASP'| $rsc@@16))
 :qid |RecoveryAddresscvc5bpl.13374:20|
 :skolemid |272|
 :pattern ( (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_161035| $1_VASP_ParentVASP_$memory) $a_0@@16))
)) (forall (($a_0@@17 Int) ) (! (let (($rsc@@17 (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) $a_0@@17)))
(|$IsValid'$1_DualAttestation_Credential'| $rsc@@17))
 :qid |RecoveryAddresscvc5bpl.13378:20|
 :skolemid |273|
 :pattern ( (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) $a_0@@17))
))))) (and (and (and (forall (($a_0@@18 Int) ) (! (let (($rsc@@18 (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) $a_0@@18)))
(|$IsValid'$1_DualAttestation_Limit'| $rsc@@18))
 :qid |RecoveryAddresscvc5bpl.13382:20|
 :skolemid |274|
 :pattern ( (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) $a_0@@18))
)) (= $t6@@7 (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (= _$t0@@10 _$t0@@10) (= _$t1@@7 _$t1@@7))) (and (and (= _$t2@@0 _$t2@@0) (= _$t3 _$t3)) (and (= _$t4 _$t4) (= (ControlFlow 0 228117) 228111))))) |inline$$1_Vector_is_empty'u8'$0$anon0_correct|)))))
(let ((inline$$InitEventStore$0$anon0_correct@@10  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@12 T@$1_Event_EventHandle) ) (! (let ((stream@@11 (|Select__T@[$1_Event_EventHandle]Multiset_91859_| (|streams#$EventStore| $es) handle@@12)))
 (and (= (|l#Multiset_91859| stream@@11) 0) (forall ((v@@52 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_91859| stream@@11) v@@52) 0)
 :qid |RecoveryAddresscvc5bpl.134:13|
 :skolemid |2|
))))
 :qid |RecoveryAddresscvc5bpl.2787:13|
 :skolemid |79|
))) (= (ControlFlow 0 227657) 228117)) anon0$1_correct@@10)))
(let ((anon0_correct@@10  (=> (= (ControlFlow 0 310434) 227657) inline$$InitEventStore$0$anon0_correct@@10)))
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
 (=> (= (ControlFlow 0 0) 311994) (let ((L8_correct@@1  (and (=> (= (ControlFlow 0 231294) (- 0 313111)) (or (or (or (or (or (or (and (= (seq.len _$t4@@0) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (and (= (seq.len _$t4@@0) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (= (seq.len _$t4@@0) 0) (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@8) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@8) 1) _$t2@@1 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@8) 2) (div _$t2@@1 2) (+ 18446744073709551615 1)))) 18446744073709551615))) (and (or (not (= (seq.len _$t4@@0) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 1) _$t2@@1 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 2) (div _$t2@@1 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@11 _$t1@@8))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@11) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@11)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@8) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@11) _$t0@@11 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@11))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8)))))))) (= (seq.len (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8))) _$t1@@8)))) 0))) (and (or (not (= (seq.len _$t4@@0) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 1) _$t2@@1 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 2) (div _$t2@@1 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@11 _$t1@@8))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@11) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@11)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@8) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@11) _$t0@@11 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@11))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8)))))))) (= (seq.len (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8))) _$t1@@8)))) 0))) (and (or (not (= (seq.len _$t4@@0) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 1) _$t2@@1 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 2) (div _$t2@@1 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@11 _$t1@@8))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@11) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@11)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@8) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@11) _$t0@@11 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@11))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8)))))))) (not (let ((payee_compliance_key@@6 (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8))) _$t1@@8)))))
 (and (and (= (seq.len _$t4@@0) 64) (not (= (seq.len payee_compliance_key@@6) 0))) ($1_Signature_$ed25519_verify _$t4@@0 payee_compliance_key@@6 ($1_DualAttestation_spec_dual_attestation_message _$t0@@11 _$t3@@0 _$t2@@1))))))) (and (or (not (= (seq.len _$t4@@0) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 1) _$t2@@1 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 2) (div _$t2@@1 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@11 _$t1@@8))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@11) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@11)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@8) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@11) _$t0@@11 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@11))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8)))))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8))) _$t1@@8)))))) (=> (or (or (or (or (or (or (and (= (seq.len _$t4@@0) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (and (= (seq.len _$t4@@0) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (= (seq.len _$t4@@0) 0) (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@8) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@8) 1) _$t2@@1 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@8) 2) (div _$t2@@1 2) (+ 18446744073709551615 1)))) 18446744073709551615))) (and (or (not (= (seq.len _$t4@@0) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 1) _$t2@@1 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 2) (div _$t2@@1 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@11 _$t1@@8))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@11) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@11)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@8) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@11) _$t0@@11 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@11))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8)))))))) (= (seq.len (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8))) _$t1@@8)))) 0))) (and (or (not (= (seq.len _$t4@@0) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 1) _$t2@@1 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 2) (div _$t2@@1 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@11 _$t1@@8))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@11) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@11)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@8) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@11) _$t0@@11 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@11))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8)))))))) (= (seq.len (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8))) _$t1@@8)))) 0))) (and (or (not (= (seq.len _$t4@@0) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 1) _$t2@@1 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 2) (div _$t2@@1 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@11 _$t1@@8))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@11) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@11)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@8) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@11) _$t0@@11 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@11))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8)))))))) (not (let ((payee_compliance_key@@7 (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8))) _$t1@@8)))))
 (and (and (= (seq.len _$t4@@0) 64) (not (= (seq.len payee_compliance_key@@7) 0))) ($1_Signature_$ed25519_verify _$t4@@0 payee_compliance_key@@7 ($1_DualAttestation_spec_dual_attestation_message _$t0@@11 _$t3@@0 _$t2@@1))))))) (and (or (not (= (seq.len _$t4@@0) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 1) _$t2@@1 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 2) (div _$t2@@1 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@11 _$t1@@8))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@11) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@11)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@8) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@11) _$t0@@11 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@11))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8)))))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8))) _$t1@@8))))) (=> (= (ControlFlow 0 231294) (- 0 313299)) (or (or (or (or (or (or (and (and (= (seq.len _$t4@@0) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (= 5 $t8@0@@2)) (and (and (= (seq.len _$t4@@0) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (= 5 $t8@0@@2))) (and (and (= (seq.len _$t4@@0) 0) (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@8) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@8) 1) _$t2@@1 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@8) 2) (div _$t2@@1 2) (+ 18446744073709551615 1)))) 18446744073709551615)) (= 8 $t8@0@@2))) (and (and (or (not (= (seq.len _$t4@@0) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 1) _$t2@@1 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 2) (div _$t2@@1 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@11 _$t1@@8))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@11) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@11)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@8) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@11) _$t0@@11 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@11))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8)))))))) (= (seq.len (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8))) _$t1@@8)))) 0)) (= 1 $t8@0@@2))) (and (and (or (not (= (seq.len _$t4@@0) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 1) _$t2@@1 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 2) (div _$t2@@1 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@11 _$t1@@8))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@11) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@11)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@8) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@11) _$t0@@11 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@11))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8)))))))) (= (seq.len (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8))) _$t1@@8)))) 0)) (= 1 $t8@0@@2))) (and (and (or (not (= (seq.len _$t4@@0) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 1) _$t2@@1 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 2) (div _$t2@@1 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@11 _$t1@@8))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@11) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@11)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@8) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@11) _$t0@@11 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@11))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8)))))))) (not (let ((payee_compliance_key@@8 (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8))) _$t1@@8)))))
 (and (and (= (seq.len _$t4@@0) 64) (not (= (seq.len payee_compliance_key@@8) 0))) ($1_Signature_$ed25519_verify _$t4@@0 payee_compliance_key@@8 ($1_DualAttestation_spec_dual_attestation_message _$t0@@11 _$t3@@0 _$t2@@1)))))) (= 7 $t8@0@@2))) (and (and (or (not (= (seq.len _$t4@@0) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 1) _$t2@@1 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 2) (div _$t2@@1 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@11 _$t1@@8))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@11) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@11)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@8) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@11) _$t0@@11 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@11))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8)))))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8))) _$t1@@8)))) (= 5 $t8@0@@2))))))))
(let ((anon18_Then_correct@@0  (=> $t14@@2 (=> (and (and (or (or (or (and (= (seq.len (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8))) _$t1@@8)))) 0) (= 1 $t8@@6)) (and (= (seq.len (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8))) _$t1@@8)))) 0) (= 1 $t8@@6))) (and (not (let ((payee_compliance_key@@9 (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8))) _$t1@@8)))))
 (and (and (= (seq.len _$t4@@0) 64) (not (= (seq.len payee_compliance_key@@9) 0))) ($1_Signature_$ed25519_verify _$t4@@0 payee_compliance_key@@9 ($1_DualAttestation_spec_dual_attestation_message _$t0@@11 _$t3@@0 _$t2@@1))))) (= 7 $t8@@6))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8))) _$t1@@8))) (= 5 $t8@@6))) (= $t8@@6 $t8@@6)) (and (= $t8@0@@2 $t8@@6) (= (ControlFlow 0 230738) 231294))) L8_correct@@1))))
(let ((anon16_Then_correct@@1  (=> $t13@@0 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)) (= 5 $t8@@6)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= 5 $t8@@6))) (and (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t11@@1) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t11@@1) 1) _$t2@@1 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t11@@1) 2) (div _$t2@@1 2) (+ 18446744073709551615 1)))) 18446744073709551615) (= 8 $t8@@6))) (= $t8@@6 $t8@@6)) (and (= $t8@0@@2 $t8@@6) (= (ControlFlow 0 231356) 231294))) L8_correct@@1))))
(let ((L6_correct@@0  (and (=> (= (ControlFlow 0 230542) (- 0 312886)) (not (and (= (seq.len _$t4@@0) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))))) (=> (not (and (= (seq.len _$t4@@0) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)))) (and (=> (= (ControlFlow 0 230542) (- 0 312905)) (not (and (= (seq.len _$t4@@0) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))))) (=> (not (and (= (seq.len _$t4@@0) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 230542) (- 0 312924)) (not (and (= (seq.len _$t4@@0) 0) (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@8) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@8) 1) _$t2@@1 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@8) 2) (div _$t2@@1 2) (+ 18446744073709551615 1)))) 18446744073709551615)))) (=> (not (and (= (seq.len _$t4@@0) 0) (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@8) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@8) 1) _$t2@@1 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@8) 2) (div _$t2@@1 2) (+ 18446744073709551615 1)))) 18446744073709551615))) (and (=> (= (ControlFlow 0 230542) (- 0 312947)) (not (and (or (not (= (seq.len _$t4@@0) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 1) _$t2@@1 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 2) (div _$t2@@1 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@11 _$t1@@8))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@11) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@11)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@8) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@11) _$t0@@11 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@11))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8)))))))) (= (seq.len (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8))) _$t1@@8)))) 0)))) (=> (not (and (or (not (= (seq.len _$t4@@0) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 1) _$t2@@1 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 2) (div _$t2@@1 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@11 _$t1@@8))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@11) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@11)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@8) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@11) _$t0@@11 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@11))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8)))))))) (= (seq.len (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8))) _$t1@@8)))) 0))) (and (=> (= (ControlFlow 0 230542) (- 0 312984)) (not (and (or (not (= (seq.len _$t4@@0) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 1) _$t2@@1 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 2) (div _$t2@@1 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@11 _$t1@@8))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@11) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@11)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@8) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@11) _$t0@@11 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@11))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8)))))))) (= (seq.len (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8))) _$t1@@8)))) 0)))) (=> (not (and (or (not (= (seq.len _$t4@@0) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 1) _$t2@@1 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 2) (div _$t2@@1 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@11 _$t1@@8))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@11) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@11)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@8) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@11) _$t0@@11 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@11))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8)))))))) (= (seq.len (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8))) _$t1@@8)))) 0))) (and (=> (= (ControlFlow 0 230542) (- 0 313021)) (not (and (or (not (= (seq.len _$t4@@0) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 1) _$t2@@1 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 2) (div _$t2@@1 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@11 _$t1@@8))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@11) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@11)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@8) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@11) _$t0@@11 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@11))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8)))))))) (not (let ((payee_compliance_key@@10 (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8))) _$t1@@8)))))
 (and (and (= (seq.len _$t4@@0) 64) (not (= (seq.len payee_compliance_key@@10) 0))) ($1_Signature_$ed25519_verify _$t4@@0 payee_compliance_key@@10 ($1_DualAttestation_spec_dual_attestation_message _$t0@@11 _$t3@@0 _$t2@@1)))))))) (=> (not (and (or (not (= (seq.len _$t4@@0) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 1) _$t2@@1 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 2) (div _$t2@@1 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@11 _$t1@@8))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@11) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@11)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@8) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@11) _$t0@@11 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@11))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8)))))))) (not (let ((payee_compliance_key@@11 (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8))) _$t1@@8)))))
 (and (and (= (seq.len _$t4@@0) 64) (not (= (seq.len payee_compliance_key@@11) 0))) ($1_Signature_$ed25519_verify _$t4@@0 payee_compliance_key@@11 ($1_DualAttestation_spec_dual_attestation_message _$t0@@11 _$t3@@0 _$t2@@1))))))) (=> (= (ControlFlow 0 230542) (- 0 313060)) (not (and (or (not (= (seq.len _$t4@@0) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 1) _$t2@@1 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 2) (div _$t2@@1 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@11 _$t1@@8))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@11) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@11)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@8) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@11) _$t0@@11 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@11))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8)))))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8))) _$t1@@8))))))))))))))))))))
(let ((anon18_Else_correct@@0  (=> (and (not $t14@@2) (= (ControlFlow 0 230626) 230542)) L6_correct@@0)))
(let ((anon17_Then_correct@@1  (=> (and $t5@0@@0 (= $t14@@2  (or (or (or (= (seq.len (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8))) _$t1@@8)))) 0) (= (seq.len (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8))) _$t1@@8)))) 0)) (not (let ((payee_compliance_key@@12 (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8))) _$t1@@8)))))
 (and (and (= (seq.len _$t4@@0) 64) (not (= (seq.len payee_compliance_key@@12) 0))) ($1_Signature_$ed25519_verify _$t4@@0 payee_compliance_key@@12 ($1_DualAttestation_spec_dual_attestation_message _$t0@@11 _$t3@@0 _$t2@@1)))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8))) _$t1@@8)))))) (and (=> (= (ControlFlow 0 230618) 230738) anon18_Then_correct@@0) (=> (= (ControlFlow 0 230618) 230626) anon18_Else_correct@@0)))))
(let ((anon17_Else_correct@@1  (=> (and (not $t5@0@@0) (= (ControlFlow 0 230276) 230542)) L6_correct@@0)))
(let ((anon16_Else_correct@@1  (=> (and (and (not $t13@@0) (= $t12@@1  (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 1) _$t2@@1 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 2) (div _$t2@@1 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@11 _$t1@@8))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@11) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@11)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@8) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@11) _$t0@@11 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@11))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@8))))))))) (and (= $t12@@1 $t12@@1) (= $t5@0@@0 $t12@@1))) (and (=> (= (ControlFlow 0 230268) 230618) anon17_Then_correct@@1) (=> (= (ControlFlow 0 230268) 230276) anon17_Else_correct@@1)))))
(let ((anon15_Else_correct@@1  (=> (not inline$$Not$0$dst@1@@2) (=> (and (= $t11@@1 (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (= $t13@@0  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t11@@1) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t11@@1) 1) _$t2@@1 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t11@@1) 2) (div _$t2@@1 2) (+ 18446744073709551615 1)))) 18446744073709551615)))) (and (=> (= (ControlFlow 0 230228) 231356) anon16_Then_correct@@1) (=> (= (ControlFlow 0 230228) 230268) anon16_Else_correct@@1))))))
(let ((anon15_Then_correct@@1  (=> inline$$Not$0$dst@1@@2 (=> (and (= true true) (= $t5@0@@0 true)) (and (=> (= (ControlFlow 0 231374) 230618) anon17_Then_correct@@1) (=> (= (ControlFlow 0 231374) 230276) anon17_Else_correct@@1))))))
(let ((inline$$Not$0$anon0_correct@@2  (=> (= inline$$Not$0$dst@1@@2  (not |inline$$1_Vector_is_empty'u8'$0$b@1@@0|)) (and (=> (= (ControlFlow 0 230172) 231374) anon15_Then_correct@@1) (=> (= (ControlFlow 0 230172) 230228) anon15_Else_correct@@1)))))
(let ((anon14_Else_correct@@2  (=> (and (not false) (= (ControlFlow 0 230178) 230172)) inline$$Not$0$anon0_correct@@2)))
(let ((anon14_Then_correct@@2 true))
(let ((|inline$$1_Vector_is_empty'u8'$0$anon0_correct@@0|  (=> (= |inline$$1_Vector_is_empty'u8'$0$b@1@@0| (= (seq.len _$t4@@0) 0)) (and (=> (= (ControlFlow 0 230128) 231388) anon14_Then_correct@@2) (=> (= (ControlFlow 0 230128) 230178) anon14_Else_correct@@2)))))
(let ((anon0$1_correct@@11  (=> (and (and (forall ((addr@@89 Int) ) (!  (=> (|$IsValid'address'| addr@@89) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_149233| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr@@89) (|Select__T@[Int]Bool_| (|domain#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |RecoveryAddresscvc5bpl.13668:22|
 :skolemid |275|
)) (forall ((addr@@90 Int) ) (!  (=> (|$IsValid'address'| addr@@90) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_149324| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr@@90) (|Select__T@[Int]Bool_| (|domain#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |RecoveryAddresscvc5bpl.13668:222|
 :skolemid |276|
))) (forall ((addr@@91 Int) ) (!  (=> (|$IsValid'address'| addr@@91) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_149415| |$1_Diem_Preburn'#0'_$memory|) addr@@91) (|Select__T@[Int]Bool_| (|domain#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |RecoveryAddresscvc5bpl.13668:423|
 :skolemid |277|
))) (=> (and (and (and (forall ((addr@@92 Int) ) (!  (=> (|$IsValid'address'| addr@@92) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_149642| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr@@92) (|Select__T@[Int]Bool_| (|domain#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |RecoveryAddresscvc5bpl.13672:22|
 :skolemid |278|
)) (forall ((addr@@93 Int) ) (!  (=> (|$IsValid'address'| addr@@93) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_149741| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr@@93) (|Select__T@[Int]Bool_| (|domain#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |RecoveryAddresscvc5bpl.13672:227|
 :skolemid |279|
))) (forall ((addr@@94 Int) ) (!  (=> (|$IsValid'address'| addr@@94) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_149840| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@94) (|Select__T@[Int]Bool_| (|domain#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |RecoveryAddresscvc5bpl.13672:433|
 :skolemid |280|
))) (and (and (forall ((child_addr@@0 Int) ) (!  (=> (|$IsValid'address'| child_addr@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) child_addr@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) child_addr@@0)))))
 :qid |RecoveryAddresscvc5bpl.13676:20|
 :skolemid |281|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (and (forall ((addr1@@18 Int) ) (!  (=> (|$IsValid'address'| addr1@@18) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@18) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@18) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@18)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@18) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@18)) 2)))))
 :qid |RecoveryAddresscvc5bpl.13684:20|
 :skolemid |282|
)) (|$IsValid'address'| _$t0@@11)))) (=> (and (and (and (and (|$IsValid'address'| _$t1@@8) (|$IsValid'u64'| _$t2@@1)) (and (|$IsValid'vec'u8''| _$t3@@0) (|$IsValid'vec'u8''| _$t4@@0))) (and (and (forall (($a_0@@19 Int) ) (! (let (($rsc@@19 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) $a_0@@19)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| $rsc@@19) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $rsc@@19)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $rsc@@19) 10000000000))))
 :qid |RecoveryAddresscvc5bpl.13702:20|
 :skolemid |283|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) $a_0@@19))
)) (forall (($a_0@@20 Int) ) (! (let (($rsc@@20 (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) $a_0@@20)))
(|$IsValid'$1_VASP_ChildVASP'| $rsc@@20))
 :qid |RecoveryAddresscvc5bpl.13706:20|
 :skolemid |284|
 :pattern ( (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) $a_0@@20))
))) (and (forall (($a_0@@21 Int) ) (! (let (($rsc@@21 (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_161035| $1_VASP_ParentVASP_$memory) $a_0@@21)))
(|$IsValid'$1_VASP_ParentVASP'| $rsc@@21))
 :qid |RecoveryAddresscvc5bpl.13710:20|
 :skolemid |285|
 :pattern ( (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_161035| $1_VASP_ParentVASP_$memory) $a_0@@21))
)) (forall (($a_0@@22 Int) ) (! (let (($rsc@@22 (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) $a_0@@22)))
(|$IsValid'$1_DualAttestation_Credential'| $rsc@@22))
 :qid |RecoveryAddresscvc5bpl.13714:20|
 :skolemid |286|
 :pattern ( (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) $a_0@@22))
))))) (and (and (and (forall (($a_0@@23 Int) ) (! (let (($rsc@@23 (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) $a_0@@23)))
(|$IsValid'$1_DualAttestation_Limit'| $rsc@@23))
 :qid |RecoveryAddresscvc5bpl.13718:20|
 :skolemid |287|
 :pattern ( (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) $a_0@@23))
)) (= $t6@@8 (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (= _$t0@@11 _$t0@@11) (= _$t1@@8 _$t1@@8))) (and (and (= _$t2@@1 _$t2@@1) (= _$t3@@0 _$t3@@0)) (and (= _$t4@@0 _$t4@@0) (= (ControlFlow 0 230134) 230128))))) |inline$$1_Vector_is_empty'u8'$0$anon0_correct@@0|)))))
(let ((inline$$InitEventStore$0$anon0_correct@@11  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@13 T@$1_Event_EventHandle) ) (! (let ((stream@@12 (|Select__T@[$1_Event_EventHandle]Multiset_91859_| (|streams#$EventStore| $es) handle@@13)))
 (and (= (|l#Multiset_91859| stream@@12) 0) (forall ((v@@53 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_91859| stream@@12) v@@53) 0)
 :qid |RecoveryAddresscvc5bpl.134:13|
 :skolemid |2|
))))
 :qid |RecoveryAddresscvc5bpl.2787:13|
 :skolemid |79|
))) (= (ControlFlow 0 229674) 230134)) anon0$1_correct@@11)))
(let ((anon0_correct@@11  (=> (= (ControlFlow 0 311994) 229674) inline$$InitEventStore$0$anon0_correct@@11)))
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
 (=> (= (ControlFlow 0 0) 313554) (let ((L8_correct@@2  (and (=> (= (ControlFlow 0 233321) (- 0 314681)) (or (or (or (or (or (or (and (= (seq.len _$t4@@1) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (and (= (seq.len _$t4@@1) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (and (= (seq.len _$t4@@1) 0) (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@9) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@9) 1) _$t2@@2 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@9) 2) (div _$t2@@2 2) (+ 18446744073709551615 1)))) 18446744073709551615))) (and (or (not (= (seq.len _$t4@@1) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 1) _$t2@@2 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 2) (div _$t2@@2 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@12 _$t1@@9))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@12) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@12)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@9) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@12) _$t0@@12 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@12))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9)))))))) (= (seq.len (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9))) _$t1@@9)))) 0))) (and (or (not (= (seq.len _$t4@@1) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 1) _$t2@@2 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 2) (div _$t2@@2 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@12 _$t1@@9))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@12) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@12)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@9) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@12) _$t0@@12 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@12))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9)))))))) (= (seq.len (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9))) _$t1@@9)))) 0))) (and (or (not (= (seq.len _$t4@@1) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 1) _$t2@@2 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 2) (div _$t2@@2 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@12 _$t1@@9))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@12) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@12)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@9) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@12) _$t0@@12 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@12))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9)))))))) (not (let ((payee_compliance_key@@13 (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9))) _$t1@@9)))))
 (and (and (= (seq.len _$t4@@1) 64) (not (= (seq.len payee_compliance_key@@13) 0))) ($1_Signature_$ed25519_verify _$t4@@1 payee_compliance_key@@13 ($1_DualAttestation_spec_dual_attestation_message _$t0@@12 _$t3@@1 _$t2@@2))))))) (and (or (not (= (seq.len _$t4@@1) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 1) _$t2@@2 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 2) (div _$t2@@2 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@12 _$t1@@9))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@12) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@12)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@9) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@12) _$t0@@12 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@12))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9)))))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9))) _$t1@@9)))))) (=> (or (or (or (or (or (or (and (= (seq.len _$t4@@1) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (and (= (seq.len _$t4@@1) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (and (= (seq.len _$t4@@1) 0) (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@9) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@9) 1) _$t2@@2 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@9) 2) (div _$t2@@2 2) (+ 18446744073709551615 1)))) 18446744073709551615))) (and (or (not (= (seq.len _$t4@@1) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 1) _$t2@@2 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 2) (div _$t2@@2 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@12 _$t1@@9))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@12) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@12)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@9) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@12) _$t0@@12 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@12))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9)))))))) (= (seq.len (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9))) _$t1@@9)))) 0))) (and (or (not (= (seq.len _$t4@@1) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 1) _$t2@@2 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 2) (div _$t2@@2 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@12 _$t1@@9))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@12) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@12)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@9) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@12) _$t0@@12 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@12))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9)))))))) (= (seq.len (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9))) _$t1@@9)))) 0))) (and (or (not (= (seq.len _$t4@@1) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 1) _$t2@@2 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 2) (div _$t2@@2 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@12 _$t1@@9))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@12) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@12)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@9) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@12) _$t0@@12 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@12))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9)))))))) (not (let ((payee_compliance_key@@14 (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9))) _$t1@@9)))))
 (and (and (= (seq.len _$t4@@1) 64) (not (= (seq.len payee_compliance_key@@14) 0))) ($1_Signature_$ed25519_verify _$t4@@1 payee_compliance_key@@14 ($1_DualAttestation_spec_dual_attestation_message _$t0@@12 _$t3@@1 _$t2@@2))))))) (and (or (not (= (seq.len _$t4@@1) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 1) _$t2@@2 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 2) (div _$t2@@2 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@12 _$t1@@9))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@12) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@12)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@9) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@12) _$t0@@12 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@12))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9)))))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9))) _$t1@@9))))) (=> (= (ControlFlow 0 233321) (- 0 314869)) (or (or (or (or (or (or (and (and (= (seq.len _$t4@@1) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (= 5 $t8@0@@3)) (and (and (= (seq.len _$t4@@1) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (= 5 $t8@0@@3))) (and (and (= (seq.len _$t4@@1) 0) (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@9) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@9) 1) _$t2@@2 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@9) 2) (div _$t2@@2 2) (+ 18446744073709551615 1)))) 18446744073709551615)) (= 8 $t8@0@@3))) (and (and (or (not (= (seq.len _$t4@@1) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 1) _$t2@@2 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 2) (div _$t2@@2 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@12 _$t1@@9))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@12) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@12)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@9) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@12) _$t0@@12 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@12))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9)))))))) (= (seq.len (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9))) _$t1@@9)))) 0)) (= 1 $t8@0@@3))) (and (and (or (not (= (seq.len _$t4@@1) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 1) _$t2@@2 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 2) (div _$t2@@2 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@12 _$t1@@9))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@12) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@12)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@9) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@12) _$t0@@12 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@12))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9)))))))) (= (seq.len (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9))) _$t1@@9)))) 0)) (= 1 $t8@0@@3))) (and (and (or (not (= (seq.len _$t4@@1) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 1) _$t2@@2 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 2) (div _$t2@@2 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@12 _$t1@@9))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@12) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@12)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@9) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@12) _$t0@@12 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@12))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9)))))))) (not (let ((payee_compliance_key@@15 (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9))) _$t1@@9)))))
 (and (and (= (seq.len _$t4@@1) 64) (not (= (seq.len payee_compliance_key@@15) 0))) ($1_Signature_$ed25519_verify _$t4@@1 payee_compliance_key@@15 ($1_DualAttestation_spec_dual_attestation_message _$t0@@12 _$t3@@1 _$t2@@2)))))) (= 7 $t8@0@@3))) (and (and (or (not (= (seq.len _$t4@@1) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 1) _$t2@@2 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 2) (div _$t2@@2 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@12 _$t1@@9))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@12) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@12)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@9) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@12) _$t0@@12 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@12))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9)))))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9))) _$t1@@9)))) (= 5 $t8@0@@3))))))))
(let ((anon18_Then_correct@@1  (=> $t14@@3 (=> (and (and (or (or (or (and (= (seq.len (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9))) _$t1@@9)))) 0) (= 1 $t8@@7)) (and (= (seq.len (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9))) _$t1@@9)))) 0) (= 1 $t8@@7))) (and (not (let ((payee_compliance_key@@16 (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9))) _$t1@@9)))))
 (and (and (= (seq.len _$t4@@1) 64) (not (= (seq.len payee_compliance_key@@16) 0))) ($1_Signature_$ed25519_verify _$t4@@1 payee_compliance_key@@16 ($1_DualAttestation_spec_dual_attestation_message _$t0@@12 _$t3@@1 _$t2@@2))))) (= 7 $t8@@7))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9))) _$t1@@9))) (= 5 $t8@@7))) (= $t8@@7 $t8@@7)) (and (= $t8@0@@3 $t8@@7) (= (ControlFlow 0 232765) 233321))) L8_correct@@2))))
(let ((anon16_Then_correct@@2  (=> $t13@@1 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)) (= 5 $t8@@7)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= 5 $t8@@7))) (and (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t11@@2) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t11@@2) 1) _$t2@@2 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t11@@2) 2) (div _$t2@@2 2) (+ 18446744073709551615 1)))) 18446744073709551615) (= 8 $t8@@7))) (= $t8@@7 $t8@@7)) (and (= $t8@0@@3 $t8@@7) (= (ControlFlow 0 233383) 233321))) L8_correct@@2))))
(let ((L6_correct@@1  (and (=> (= (ControlFlow 0 232569) (- 0 314456)) (not (and (= (seq.len _$t4@@1) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))))) (=> (not (and (= (seq.len _$t4@@1) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)))) (and (=> (= (ControlFlow 0 232569) (- 0 314475)) (not (and (= (seq.len _$t4@@1) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (=> (not (and (= (seq.len _$t4@@1) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 232569) (- 0 314494)) (not (and (= (seq.len _$t4@@1) 0) (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@9) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@9) 1) _$t2@@2 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@9) 2) (div _$t2@@2 2) (+ 18446744073709551615 1)))) 18446744073709551615)))) (=> (not (and (= (seq.len _$t4@@1) 0) (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@9) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@9) 1) _$t2@@2 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t6@@9) 2) (div _$t2@@2 2) (+ 18446744073709551615 1)))) 18446744073709551615))) (and (=> (= (ControlFlow 0 232569) (- 0 314517)) (not (and (or (not (= (seq.len _$t4@@1) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 1) _$t2@@2 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 2) (div _$t2@@2 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@12 _$t1@@9))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@12) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@12)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@9) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@12) _$t0@@12 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@12))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9)))))))) (= (seq.len (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9))) _$t1@@9)))) 0)))) (=> (not (and (or (not (= (seq.len _$t4@@1) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 1) _$t2@@2 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 2) (div _$t2@@2 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@12 _$t1@@9))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@12) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@12)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@9) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@12) _$t0@@12 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@12))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9)))))))) (= (seq.len (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9))) _$t1@@9)))) 0))) (and (=> (= (ControlFlow 0 232569) (- 0 314554)) (not (and (or (not (= (seq.len _$t4@@1) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 1) _$t2@@2 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 2) (div _$t2@@2 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@12 _$t1@@9))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@12) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@12)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@9) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@12) _$t0@@12 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@12))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9)))))))) (= (seq.len (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9))) _$t1@@9)))) 0)))) (=> (not (and (or (not (= (seq.len _$t4@@1) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 1) _$t2@@2 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 2) (div _$t2@@2 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@12 _$t1@@9))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@12) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@12)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@9) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@12) _$t0@@12 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@12))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9)))))))) (= (seq.len (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9))) _$t1@@9)))) 0))) (and (=> (= (ControlFlow 0 232569) (- 0 314591)) (not (and (or (not (= (seq.len _$t4@@1) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 1) _$t2@@2 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 2) (div _$t2@@2 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@12 _$t1@@9))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@12) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@12)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@9) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@12) _$t0@@12 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@12))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9)))))))) (not (let ((payee_compliance_key@@17 (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9))) _$t1@@9)))))
 (and (and (= (seq.len _$t4@@1) 64) (not (= (seq.len payee_compliance_key@@17) 0))) ($1_Signature_$ed25519_verify _$t4@@1 payee_compliance_key@@17 ($1_DualAttestation_spec_dual_attestation_message _$t0@@12 _$t3@@1 _$t2@@2)))))))) (=> (not (and (or (not (= (seq.len _$t4@@1) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 1) _$t2@@2 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 2) (div _$t2@@2 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@12 _$t1@@9))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@12) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@12)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@9) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@12) _$t0@@12 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@12))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9)))))))) (not (let ((payee_compliance_key@@18 (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9))) _$t1@@9)))))
 (and (and (= (seq.len _$t4@@1) 64) (not (= (seq.len payee_compliance_key@@18) 0))) ($1_Signature_$ed25519_verify _$t4@@1 payee_compliance_key@@18 ($1_DualAttestation_spec_dual_attestation_message _$t0@@12 _$t3@@1 _$t2@@2))))))) (=> (= (ControlFlow 0 232569) (- 0 314630)) (not (and (or (not (= (seq.len _$t4@@1) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 1) _$t2@@2 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 2) (div _$t2@@2 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@12 _$t1@@9))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@12) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@12)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@9) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@12) _$t0@@12 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@12))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9)))))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9))) _$t1@@9))))))))))))))))))))
(let ((anon18_Else_correct@@1  (=> (and (not $t14@@3) (= (ControlFlow 0 232653) 232569)) L6_correct@@1)))
(let ((anon17_Then_correct@@2  (=> (and $t5@0@@1 (= $t14@@3  (or (or (or (= (seq.len (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9))) _$t1@@9)))) 0) (= (seq.len (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9))) _$t1@@9)))) 0)) (not (let ((payee_compliance_key@@19 (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9))) _$t1@@9)))))
 (and (and (= (seq.len _$t4@@1) 64) (not (= (seq.len payee_compliance_key@@19) 0))) ($1_Signature_$ed25519_verify _$t4@@1 payee_compliance_key@@19 ($1_DualAttestation_spec_dual_attestation_message _$t0@@12 _$t3@@1 _$t2@@2)))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9))) _$t1@@9)))))) (and (=> (= (ControlFlow 0 232645) 232765) anon18_Then_correct@@1) (=> (= (ControlFlow 0 232645) 232653) anon18_Else_correct@@1)))))
(let ((anon17_Else_correct@@2  (=> (and (not $t5@0@@1) (= (ControlFlow 0 232303) 232569)) L6_correct@@1)))
(let ((anon16_Else_correct@@2  (=> (and (and (not $t13@@1) (= $t12@@2  (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 1) _$t2@@2 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 2) (div _$t2@@2 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@12 _$t1@@9))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@12) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@12)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@9) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@12) _$t0@@12 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@12))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@9) _$t1@@9 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@9))))))))) (and (= $t12@@2 $t12@@2) (= $t5@0@@1 $t12@@2))) (and (=> (= (ControlFlow 0 232295) 232645) anon17_Then_correct@@2) (=> (= (ControlFlow 0 232295) 232303) anon17_Else_correct@@2)))))
(let ((anon15_Else_correct@@2  (=> (not inline$$Not$0$dst@1@@3) (=> (and (= $t11@@2 (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (= $t13@@1  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t11@@2) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t11@@2) 1) _$t2@@2 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t11@@2) 2) (div _$t2@@2 2) (+ 18446744073709551615 1)))) 18446744073709551615)))) (and (=> (= (ControlFlow 0 232255) 233383) anon16_Then_correct@@2) (=> (= (ControlFlow 0 232255) 232295) anon16_Else_correct@@2))))))
(let ((anon15_Then_correct@@2  (=> inline$$Not$0$dst@1@@3 (=> (and (= true true) (= $t5@0@@1 true)) (and (=> (= (ControlFlow 0 233401) 232645) anon17_Then_correct@@2) (=> (= (ControlFlow 0 233401) 232303) anon17_Else_correct@@2))))))
(let ((inline$$Not$0$anon0_correct@@3  (=> (= inline$$Not$0$dst@1@@3  (not |inline$$1_Vector_is_empty'u8'$0$b@1@@1|)) (and (=> (= (ControlFlow 0 232199) 233401) anon15_Then_correct@@2) (=> (= (ControlFlow 0 232199) 232255) anon15_Else_correct@@2)))))
(let ((anon14_Else_correct@@3  (=> (and (not false) (= (ControlFlow 0 232205) 232199)) inline$$Not$0$anon0_correct@@3)))
(let ((anon14_Then_correct@@3 true))
(let ((|inline$$1_Vector_is_empty'u8'$0$anon0_correct@@1|  (=> (= |inline$$1_Vector_is_empty'u8'$0$b@1@@1| (= (seq.len _$t4@@1) 0)) (and (=> (= (ControlFlow 0 232155) 233415) anon14_Then_correct@@3) (=> (= (ControlFlow 0 232155) 232205) anon14_Else_correct@@3)))))
(let ((anon0$1_correct@@12  (=> (and (and (forall ((addr@@95 Int) ) (!  (=> (|$IsValid'address'| addr@@95) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_149233| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr@@95) (|Select__T@[Int]Bool_| (|domain#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |RecoveryAddresscvc5bpl.14004:22|
 :skolemid |288|
)) (forall ((addr@@96 Int) ) (!  (=> (|$IsValid'address'| addr@@96) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_149324| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr@@96) (|Select__T@[Int]Bool_| (|domain#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |RecoveryAddresscvc5bpl.14004:222|
 :skolemid |289|
))) (forall ((addr@@97 Int) ) (!  (=> (|$IsValid'address'| addr@@97) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_149415| |$1_Diem_Preburn'#0'_$memory|) addr@@97) (|Select__T@[Int]Bool_| (|domain#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |RecoveryAddresscvc5bpl.14004:423|
 :skolemid |290|
))) (=> (and (and (and (and (and (forall ((addr@@98 Int) ) (!  (=> (|$IsValid'address'| addr@@98) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_149642| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr@@98) (|Select__T@[Int]Bool_| (|domain#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |RecoveryAddresscvc5bpl.14008:22|
 :skolemid |291|
)) (forall ((addr@@99 Int) ) (!  (=> (|$IsValid'address'| addr@@99) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_149741| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr@@99) (|Select__T@[Int]Bool_| (|domain#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |RecoveryAddresscvc5bpl.14008:227|
 :skolemid |292|
))) (forall ((addr@@100 Int) ) (!  (=> (|$IsValid'address'| addr@@100) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_149840| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@100) (|Select__T@[Int]Bool_| (|domain#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |RecoveryAddresscvc5bpl.14008:433|
 :skolemid |293|
))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (and (and (forall ((child_addr@@1 Int) ) (!  (=> (|$IsValid'address'| child_addr@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) child_addr@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) child_addr@@1)))))
 :qid |RecoveryAddresscvc5bpl.14016:20|
 :skolemid |294|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (and (forall ((addr1@@19 Int) ) (!  (=> (|$IsValid'address'| addr1@@19) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@19) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@19) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@19)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@19) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@19)) 2)))))
 :qid |RecoveryAddresscvc5bpl.14024:20|
 :skolemid |295|
)) (|$IsValid'address'| _$t0@@12)))) (and (and (and (and (|$IsValid'address'| _$t1@@9) (|$IsValid'u64'| _$t2@@2)) (and (|$IsValid'vec'u8''| _$t3@@1) (|$IsValid'vec'u8''| _$t4@@1))) (and (and (forall (($a_0@@24 Int) ) (! (let (($rsc@@24 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) $a_0@@24)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| $rsc@@24) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $rsc@@24)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $rsc@@24) 10000000000))))
 :qid |RecoveryAddresscvc5bpl.14042:20|
 :skolemid |296|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) $a_0@@24))
)) (forall (($a_0@@25 Int) ) (! (let (($rsc@@25 (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) $a_0@@25)))
(|$IsValid'$1_VASP_ChildVASP'| $rsc@@25))
 :qid |RecoveryAddresscvc5bpl.14046:20|
 :skolemid |297|
 :pattern ( (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) $a_0@@25))
))) (and (forall (($a_0@@26 Int) ) (! (let (($rsc@@26 (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_161035| $1_VASP_ParentVASP_$memory) $a_0@@26)))
(|$IsValid'$1_VASP_ParentVASP'| $rsc@@26))
 :qid |RecoveryAddresscvc5bpl.14050:20|
 :skolemid |298|
 :pattern ( (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_161035| $1_VASP_ParentVASP_$memory) $a_0@@26))
)) (forall (($a_0@@27 Int) ) (! (let (($rsc@@27 (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) $a_0@@27)))
(|$IsValid'$1_DualAttestation_Credential'| $rsc@@27))
 :qid |RecoveryAddresscvc5bpl.14054:20|
 :skolemid |299|
 :pattern ( (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) $a_0@@27))
))))) (and (and (and (forall (($a_0@@28 Int) ) (! (let (($rsc@@28 (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) $a_0@@28)))
(|$IsValid'$1_DualAttestation_Limit'| $rsc@@28))
 :qid |RecoveryAddresscvc5bpl.14058:20|
 :skolemid |300|
 :pattern ( (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) $a_0@@28))
)) (= $t6@@9 (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (and (= _$t0@@12 _$t0@@12) (= _$t1@@9 _$t1@@9))) (and (and (= _$t2@@2 _$t2@@2) (= _$t3@@1 _$t3@@1)) (and (= _$t4@@1 _$t4@@1) (= (ControlFlow 0 232161) 232155)))))) |inline$$1_Vector_is_empty'u8'$0$anon0_correct@@1|))))
(let ((inline$$InitEventStore$0$anon0_correct@@12  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@14 T@$1_Event_EventHandle) ) (! (let ((stream@@13 (|Select__T@[$1_Event_EventHandle]Multiset_91859_| (|streams#$EventStore| $es) handle@@14)))
 (and (= (|l#Multiset_91859| stream@@13) 0) (forall ((v@@54 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_91859| stream@@13) v@@54) 0)
 :qid |RecoveryAddresscvc5bpl.134:13|
 :skolemid |2|
))))
 :qid |RecoveryAddresscvc5bpl.2787:13|
 :skolemid |79|
))) (= (ControlFlow 0 231691) 232161)) anon0$1_correct@@12)))
(let ((anon0_correct@@12  (=> (= (ControlFlow 0 313554) 231691) inline$$InitEventStore$0$anon0_correct@@12)))
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
 (=> (= (ControlFlow 0 0) 315124) (let ((anon35_Then_correct@@0  (=> inline$$1_Signature_ed25519_verify$0$res@1 (and (=> (= (ControlFlow 0 234952) (- 0 315999)) (not (= (seq.len (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@10) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@10) _$t1@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@10))) _$t1@@10)))) 0))) (=> (not (= (seq.len (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@10) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@10) _$t1@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@10))) _$t1@@10)))) 0)) (and (=> (= (ControlFlow 0 234952) (- 0 316014)) (not (= (seq.len (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@10) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@10) _$t1@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@10))) _$t1@@10)))) 0))) (=> (not (= (seq.len (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@10) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@10) _$t1@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@10))) _$t1@@10)))) 0)) (and (=> (= (ControlFlow 0 234952) (- 0 316029)) (not (not (let ((payee_compliance_key@@20 (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@10) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@10) _$t1@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@10))) _$t1@@10)))))
 (and (and (= (seq.len _$t2@@3) 64) (not (= (seq.len payee_compliance_key@@20) 0))) ($1_Signature_$ed25519_verify _$t2@@3 payee_compliance_key@@20 ($1_DualAttestation_spec_dual_attestation_message _$t0@@13 _$t3@@2 _$t4@@2))))))) (=> (not (not (let ((payee_compliance_key@@21 (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@10) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@10) _$t1@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@10))) _$t1@@10)))))
 (and (and (= (seq.len _$t2@@3) 64) (not (= (seq.len payee_compliance_key@@21) 0))) ($1_Signature_$ed25519_verify _$t2@@3 payee_compliance_key@@21 ($1_DualAttestation_spec_dual_attestation_message _$t0@@13 _$t3@@2 _$t4@@2)))))) (and (=> (= (ControlFlow 0 234952) (- 0 316046)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@10) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@10) _$t1@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@10))) _$t1@@10))))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@10) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@10) _$t1@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@10))) _$t1@@10)))) (and (=> (= (ControlFlow 0 234952) (- 0 316061)) (forall ((addr1@@20 Int) ) (!  (=> (|$IsValid'address'| addr1@@20) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@20) (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@20)))
 :qid |RecoveryAddresscvc5bpl.14799:15|
 :skolemid |306|
))) (=> (forall ((addr1@@21 Int) ) (!  (=> (|$IsValid'address'| addr1@@21) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@21) (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@21)))
 :qid |RecoveryAddresscvc5bpl.14799:15|
 :skolemid |306|
)) (and (=> (= (ControlFlow 0 234952) (- 0 316086)) (forall ((addr1@@22 Int) ) (!  (=> (|$IsValid'address'| addr1@@22) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@22)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@22))))
 :qid |RecoveryAddresscvc5bpl.14804:15|
 :skolemid |307|
))) (=> (forall ((addr1@@23 Int) ) (!  (=> (|$IsValid'address'| addr1@@23) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@23)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@23))))
 :qid |RecoveryAddresscvc5bpl.14804:15|
 :skolemid |307|
)) (and (=> (= (ControlFlow 0 234952) (- 0 316115)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)))) (and (=> (= (ControlFlow 0 234952) (- 0 316132)) (forall ((addr1@@24 Int) ) (!  (=> (|$IsValid'address'| addr1@@24) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@24) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@24)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@24)))))
 :qid |RecoveryAddresscvc5bpl.14814:15|
 :skolemid |308|
))) (=> (forall ((addr1@@25 Int) ) (!  (=> (|$IsValid'address'| addr1@@25) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@25) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@25)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@25)))))
 :qid |RecoveryAddresscvc5bpl.14814:15|
 :skolemid |308|
)) (=> (= (ControlFlow 0 234952) (- 0 316168)) (forall ((addr1@@26 Int) ) (!  (=> (|$IsValid'address'| addr1@@26) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@26) (= (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@26)) (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@26)))))
 :qid |RecoveryAddresscvc5bpl.14819:15|
 :skolemid |309|
))))))))))))))))))))))
(let ((anon34_Then_correct@@0 true))
(let ((anon32_Then_correct@@0 true))
(let ((anon29_Then_correct@@0 true))
(let ((L9_correct  (and (=> (= (ControlFlow 0 234200) (- 0 316255)) (or (or (or (= (seq.len (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@10) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@10) _$t1@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@10))) _$t1@@10)))) 0) (= (seq.len (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@10) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@10) _$t1@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@10))) _$t1@@10)))) 0)) (not (let ((payee_compliance_key@@22 (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@10) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@10) _$t1@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@10))) _$t1@@10)))))
 (and (and (= (seq.len _$t2@@3) 64) (not (= (seq.len payee_compliance_key@@22) 0))) ($1_Signature_$ed25519_verify _$t2@@3 payee_compliance_key@@22 ($1_DualAttestation_spec_dual_attestation_message _$t0@@13 _$t3@@2 _$t4@@2)))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@10) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@10) _$t1@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@10))) _$t1@@10))))) (=> (or (or (or (= (seq.len (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@10) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@10) _$t1@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@10))) _$t1@@10)))) 0) (= (seq.len (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@10) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@10) _$t1@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@10))) _$t1@@10)))) 0)) (not (let ((payee_compliance_key@@23 (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@10) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@10) _$t1@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@10))) _$t1@@10)))))
 (and (and (= (seq.len _$t2@@3) 64) (not (= (seq.len payee_compliance_key@@23) 0))) ($1_Signature_$ed25519_verify _$t2@@3 payee_compliance_key@@23 ($1_DualAttestation_spec_dual_attestation_message _$t0@@13 _$t3@@2 _$t4@@2)))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@10) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@10) _$t1@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@10))) _$t1@@10)))) (=> (= (ControlFlow 0 234200) (- 0 316303)) (or (or (or (and (= (seq.len (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@10) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@10) _$t1@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@10))) _$t1@@10)))) 0) (= 1 $t17@0@@0)) (and (= (seq.len (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@10) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@10) _$t1@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@10))) _$t1@@10)))) 0) (= 1 $t17@0@@0))) (and (not (let ((payee_compliance_key@@24 (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@10) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@10) _$t1@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@10))) _$t1@@10)))))
 (and (and (= (seq.len _$t2@@3) 64) (not (= (seq.len payee_compliance_key@@24) 0))) ($1_Signature_$ed25519_verify _$t2@@3 payee_compliance_key@@24 ($1_DualAttestation_spec_dual_attestation_message _$t0@@13 _$t3@@2 _$t4@@2))))) (= 7 $t17@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@10) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@10) _$t1@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@10))) _$t1@@10))) (= 5 $t17@0@@0))))))))
(let ((anon35_Else_correct@@0  (=> (and (and (not inline$$1_Signature_ed25519_verify$0$res@1) (= $t39 $t39)) (and (= $t17@0@@0 $t39) (= (ControlFlow 0 234722) 234200))) L9_correct)))
(let ((anon34_Else_correct@@0  (=> (and (not false) (|$IsValid'u64'| 4)) (=> (and (and (|$IsValid'u64'| $t39) (= $t39 7)) (and (= $t39 $t39) (= inline$$1_Signature_ed25519_verify$0$res@1 inline$$1_Signature_ed25519_verify$0$res@1))) (and (=> (= (ControlFlow 0 234706) 234952) anon35_Then_correct@@0) (=> (= (ControlFlow 0 234706) 234722) anon35_Else_correct@@0))))))
(let ((inline$$1_Signature_ed25519_verify$0$anon0_correct  (=> (= inline$$1_Signature_ed25519_verify$0$res@1 ($1_Signature_$ed25519_verify _$t2@@3 $t23@@1 $t36)) (and (=> (= (ControlFlow 0 234660) 234966) anon34_Then_correct@@0) (=> (= (ControlFlow 0 234660) 234706) anon34_Else_correct@@0)))))
(let ((anon33_Then_correct@@0  (=> inline$$Not$1$dst@1 (=> (and (and (|$IsValid'vec'u8''| $t36) (= $t36 ($1_DualAttestation_spec_dual_attestation_message _$t0@@13 _$t3@@2 _$t4@@2))) (and (= $t36 $t36) (= (ControlFlow 0 234666) 234660))) inline$$1_Signature_ed25519_verify$0$anon0_correct))))
(let ((anon33_Else_correct@@0  (=> (and (and (not inline$$Not$1$dst@1) (= $t35 $t35)) (and (= $t17@0@@0 $t35) (= (ControlFlow 0 234582) 234200))) L9_correct)))
(let ((anon32_Else$1_correct  (=> (|$IsValid'u64'| 6) (=> (and (and (|$IsValid'u64'| $t35) (= $t35 1)) (and (= $t35 $t35) (= inline$$Not$1$dst@1 inline$$Not$1$dst@1))) (and (=> (= (ControlFlow 0 234566) 234666) anon33_Then_correct@@0) (=> (= (ControlFlow 0 234566) 234582) anon33_Else_correct@@0))))))
(let ((inline$$Not$1$anon0_correct  (=> (and (= inline$$Not$1$dst@1  (not |inline$$1_Vector_is_empty'u8'$1$b@1|)) (= (ControlFlow 0 234526) 234566)) anon32_Else$1_correct)))
(let ((anon32_Else_correct@@0  (=> (and (not false) (= (ControlFlow 0 234532) 234526)) inline$$Not$1$anon0_correct)))
(let ((|inline$$1_Vector_is_empty'u8'$1$anon0_correct|  (=> (= |inline$$1_Vector_is_empty'u8'$1$b@1| (= (seq.len $t30) 0)) (and (=> (= (ControlFlow 0 234482) 234980) anon32_Then_correct@@0) (=> (= (ControlFlow 0 234482) 234532) anon32_Else_correct@@0)))))
(let ((anon31_Else_correct@@0  (=> (not $t31) (=> (and (and (|$IsValid'vec'u8''| $t30) (= $t30 (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) $t29)))) (and (= $t30 $t30) (= (ControlFlow 0 234488) 234482))) |inline$$1_Vector_is_empty'u8'$1$anon0_correct|))))
(let ((anon31_Then_correct@@0  (=> $t31 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) $t29)) (= 5 $t17)) (= $t17 $t17)) (and (= $t17@0@@0 $t17) (= (ControlFlow 0 235008) 234200))) L9_correct))))
(let ((anon30_Then_correct@@0  (=> (and (and inline$$Not$0$dst@1@@4 (|$IsValid'address'| $t29)) (and (= $t29 (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@10) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@10) _$t1@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@10))) _$t1@@10)) (= $t31  (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) $t29))))) (and (=> (= (ControlFlow 0 234422) 235008) anon31_Then_correct@@0) (=> (= (ControlFlow 0 234422) 234488) anon31_Else_correct@@0)))))
(let ((anon30_Else_correct@@0  (=> (and (and (not inline$$Not$0$dst@1@@4) (= $t28 $t28)) (and (= $t17@0@@0 $t28) (= (ControlFlow 0 234390) 234200))) L9_correct)))
(let ((anon29_Else$1_correct  (=> (|$IsValid'u64'| 5) (=> (and (and (|$IsValid'u64'| $t28) (= $t28 1)) (and (= $t28 $t28) (= inline$$Not$0$dst@1@@4 inline$$Not$0$dst@1@@4))) (and (=> (= (ControlFlow 0 234374) 234422) anon30_Then_correct@@0) (=> (= (ControlFlow 0 234374) 234390) anon30_Else_correct@@0))))))
(let ((inline$$Not$0$anon0_correct@@4  (=> (and (= inline$$Not$0$dst@1@@4  (not |inline$$1_Vector_is_empty'u8'$0$b@1@@2|)) (= (ControlFlow 0 234334) 234374)) anon29_Else$1_correct)))
(let ((anon29_Else_correct@@0  (=> (and (not false) (= (ControlFlow 0 234340) 234334)) inline$$Not$0$anon0_correct@@4)))
(let ((|inline$$1_Vector_is_empty'u8'$0$anon0_correct@@2|  (=> (= |inline$$1_Vector_is_empty'u8'$0$b@1@@2| (= (seq.len $t23@@1) 0)) (and (=> (= (ControlFlow 0 234290) 235022) anon29_Then_correct@@0) (=> (= (ControlFlow 0 234290) 234340) anon29_Else_correct@@0)))))
(let ((anon28_Else_correct@@0  (=> (not $t24@@0) (=> (and (and (|$IsValid'vec'u8''| $t23@@1) (= $t23@@1 (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) $t22)))) (and (= $t23@@1 $t23@@1) (= (ControlFlow 0 234296) 234290))) |inline$$1_Vector_is_empty'u8'$0$anon0_correct@@2|))))
(let ((anon28_Then_correct@@0  (=> $t24@@0 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) $t22)) (= 5 $t17)) (= $t17 $t17)) (and (= $t17@0@@0 $t17) (= (ControlFlow 0 235050) 234200))) L9_correct))))
(let ((anon27_Then_correct@@0  (=> (and (and $t19@0 (|$IsValid'address'| $t22)) (and (= $t22 (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@10) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@10) _$t1@@10 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@10))) _$t1@@10)) (= $t24@@0  (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) $t22))))) (and (=> (= (ControlFlow 0 234232) 235050) anon28_Then_correct@@0) (=> (= (ControlFlow 0 234232) 234296) anon28_Else_correct@@0)))))
(let ((anon27_Else_correct@@0  (=> (and (and (not $t19@0) (= $t21 $t21)) (and (= $t17@0@@0 $t21) (= (ControlFlow 0 234024) 234200))) L9_correct)))
(let ((anon26_Else_correct@@0  (=> (and (and (and (not false) (|$IsValid'u64'| 64)) (and (= $t19@0 (= |inline$$1_Vector_length'u8'$0$l@1| 64)) (|$IsValid'u64'| 3))) (and (and (|$IsValid'u64'| $t21) (= $t21 7)) (and (= $t21 $t21) (= $t19@0 $t19@0)))) (and (=> (= (ControlFlow 0 234008) 234232) anon27_Then_correct@@0) (=> (= (ControlFlow 0 234008) 234024) anon27_Else_correct@@0)))))
(let ((anon26_Then_correct@@0 true))
(let ((|inline$$1_Vector_length'u8'$0$anon0_correct|  (=> (= |inline$$1_Vector_length'u8'$0$l@1| (seq.len _$t2@@3)) (and (=> (= (ControlFlow 0 233950) 235064) anon26_Then_correct@@0) (=> (= (ControlFlow 0 233950) 234008) anon26_Else_correct@@0)))))
(let ((anon0$1_correct@@13  (=> (and (and (and (and (forall ((child_addr@@2 Int) ) (!  (=> (|$IsValid'address'| child_addr@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) child_addr@@2) (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) child_addr@@2)))))
 :qid |RecoveryAddresscvc5bpl.14361:20|
 :skolemid |301|
)) (forall ((addr1@@27 Int) ) (!  (=> (|$IsValid'address'| addr1@@27) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@27) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@27) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@27)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@27) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@27)) 2)))))
 :qid |RecoveryAddresscvc5bpl.14365:20|
 :skolemid |302|
))) (and (|$IsValid'address'| _$t0@@13) (|$IsValid'address'| _$t1@@10))) (and (and (|$IsValid'vec'u8''| _$t2@@3) (|$IsValid'vec'u8''| _$t3@@2)) (and (|$IsValid'u64'| _$t4@@2) (forall (($a_0@@29 Int) ) (! (let (($rsc@@29 (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) $a_0@@29)))
(|$IsValid'$1_VASP_ChildVASP'| $rsc@@29))
 :qid |RecoveryAddresscvc5bpl.14383:20|
 :skolemid |303|
 :pattern ( (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) $a_0@@29))
))))) (and (and (and (forall (($a_0@@30 Int) ) (! (let (($rsc@@30 (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_161035| $1_VASP_ParentVASP_$memory) $a_0@@30)))
(|$IsValid'$1_VASP_ParentVASP'| $rsc@@30))
 :qid |RecoveryAddresscvc5bpl.14387:20|
 :skolemid |304|
 :pattern ( (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_161035| $1_VASP_ParentVASP_$memory) $a_0@@30))
)) (forall (($a_0@@31 Int) ) (! (let (($rsc@@31 (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) $a_0@@31)))
(|$IsValid'$1_DualAttestation_Credential'| $rsc@@31))
 :qid |RecoveryAddresscvc5bpl.14391:20|
 :skolemid |305|
 :pattern ( (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) $a_0@@31))
))) (and (= _$t0@@13 _$t0@@13) (= _$t1@@10 _$t1@@10))) (and (and (= _$t2@@3 _$t2@@3) (= _$t3@@2 _$t3@@2)) (and (= _$t4@@2 _$t4@@2) (= (ControlFlow 0 233956) 233950))))) |inline$$1_Vector_length'u8'$0$anon0_correct|)))
(let ((inline$$InitEventStore$0$anon0_correct@@13  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@15 T@$1_Event_EventHandle) ) (! (let ((stream@@14 (|Select__T@[$1_Event_EventHandle]Multiset_91859_| (|streams#$EventStore| $es) handle@@15)))
 (and (= (|l#Multiset_91859| stream@@14) 0) (forall ((v@@55 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_91859| stream@@14) v@@55) 0)
 :qid |RecoveryAddresscvc5bpl.134:13|
 :skolemid |2|
))))
 :qid |RecoveryAddresscvc5bpl.2787:13|
 :skolemid |79|
))) (= (ControlFlow 0 233720) 233956)) anon0$1_correct@@13)))
(let ((anon0_correct@@13  (=> (= (ControlFlow 0 315124) 233720) inline$$InitEventStore$0$anon0_correct@@13)))
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
 (=> (= (ControlFlow 0 0) 316397) (let ((anon12_Else_correct@@2  (=> (not $abort_flag@0@@3) (=> (and (= $t8@0@@4 (|$base_url#$1_DualAttestation_Credential| $t7@1@@0)) (= $t8@0@@4 $t8@0@@4)) (and (=> (= (ControlFlow 0 235653) (- 0 316721)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) _$t0@@14)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) _$t0@@14))) (and (=> (= (ControlFlow 0 235653) (- 0 316732)) (= $t8@0@@4 (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) _$t0@@14)))) (=> (= $t8@0@@4 (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) _$t0@@14))) (and (=> (= (ControlFlow 0 235653) (- 0 316745)) (forall ((addr1@@28 Int) ) (!  (=> (|$IsValid'address'| addr1@@28) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@28) (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@28)))
 :qid |RecoveryAddresscvc5bpl.14975:15|
 :skolemid |312|
))) (=> (forall ((addr1@@29 Int) ) (!  (=> (|$IsValid'address'| addr1@@29) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@29) (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@29)))
 :qid |RecoveryAddresscvc5bpl.14975:15|
 :skolemid |312|
)) (and (=> (= (ControlFlow 0 235653) (- 0 316770)) (forall ((addr1@@30 Int) ) (!  (=> (|$IsValid'address'| addr1@@30) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@30)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@30))))
 :qid |RecoveryAddresscvc5bpl.14980:15|
 :skolemid |313|
))) (=> (forall ((addr1@@31 Int) ) (!  (=> (|$IsValid'address'| addr1@@31) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@31)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@31))))
 :qid |RecoveryAddresscvc5bpl.14980:15|
 :skolemid |313|
)) (and (=> (= (ControlFlow 0 235653) (- 0 316799)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)))) (and (=> (= (ControlFlow 0 235653) (- 0 316816)) (forall ((addr1@@32 Int) ) (!  (=> (|$IsValid'address'| addr1@@32) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@32) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@32)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@32)))))
 :qid |RecoveryAddresscvc5bpl.14990:15|
 :skolemid |314|
))) (=> (forall ((addr1@@33 Int) ) (!  (=> (|$IsValid'address'| addr1@@33) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@33) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@33)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@33)))))
 :qid |RecoveryAddresscvc5bpl.14990:15|
 :skolemid |314|
)) (=> (= (ControlFlow 0 235653) (- 0 316852)) (forall ((addr1@@34 Int) ) (!  (=> (|$IsValid'address'| addr1@@34) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@34) (= (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@34)) (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@34)))))
 :qid |RecoveryAddresscvc5bpl.14995:15|
 :skolemid |315|
)))))))))))))))))))
(let ((L3_correct@@1  (and (=> (= (ControlFlow 0 235441) (- 0 316674)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) _$t0@@14))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) _$t0@@14)) (=> (= (ControlFlow 0 235441) (- 0 316680)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) _$t0@@14)) (= 5 $t6@0@@1)))))))
(let ((anon12_Then_correct@@2  (=> (and (and $abort_flag@0@@3 (= $abort_code@1@@3 $abort_code@1@@3)) (and (= $t6@0@@1 $abort_code@1@@3) (= (ControlFlow 0 235667) 235441))) L3_correct@@1)))
(let ((anon11_Then$1_correct@@1  (=> (= $t7@1@@0 $t7@@3) (=> (and (= $abort_flag@0@@3 true) (= $abort_code@1@@3 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 235719) 235667) anon12_Then_correct@@2) (=> (= (ControlFlow 0 235719) 235653) anon12_Else_correct@@2))))))
(let ((anon11_Then_correct@@7  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) _$t0@@14)) (= (ControlFlow 0 235717) 235719)) anon11_Then$1_correct@@1)))
(let ((anon11_Else_correct@@7  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) _$t0@@14) (=> (and (and (= $t7@0@@0 (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) _$t0@@14)) (= $t7@1@@0 $t7@0@@0)) (and (= $abort_flag@0@@3 false) (= $abort_code@1@@3 $abort_code@0@@3))) (and (=> (= (ControlFlow 0 235459) 235667) anon12_Then_correct@@2) (=> (= (ControlFlow 0 235459) 235653) anon12_Else_correct@@2))))))
(let ((anon10_Then_correct@@6  (=> $t3@0@@0 (and (=> (= (ControlFlow 0 235445) 235717) anon11_Then_correct@@7) (=> (= (ControlFlow 0 235445) 235459) anon11_Else_correct@@7)))))
(let ((anon10_Else_correct@@6  (=> (and (and (not $t3@0@@0) (= $t5@@8 $t5@@8)) (and (= $t6@0@@1 $t5@@8) (= (ControlFlow 0 235409) 235441))) L3_correct@@1)))
(let ((anon0$1_correct@@14  (=> (and (forall ((addr1@@35 Int) ) (!  (=> (|$IsValid'address'| addr1@@35) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@35) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@35) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@35)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@35) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@35)) 2)))))
 :qid |RecoveryAddresscvc5bpl.14872:20|
 :skolemid |310|
)) (|$IsValid'address'| _$t0@@14)) (=> (and (and (and (forall (($a_0@@32 Int) ) (! (let (($rsc@@32 (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) $a_0@@32)))
(|$IsValid'$1_DualAttestation_Credential'| $rsc@@32))
 :qid |RecoveryAddresscvc5bpl.14879:20|
 :skolemid |311|
 :pattern ( (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) $a_0@@32))
)) (= _$t0@@14 _$t0@@14)) (and (= $t3@0@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) _$t0@@14)) (|$IsValid'u64'| 0))) (and (and (|$IsValid'u64'| $t5@@8) (= $t5@@8 5)) (and (= $t5@@8 $t5@@8) (= $t3@0@@0 $t3@0@@0)))) (and (=> (= (ControlFlow 0 235393) 235445) anon10_Then_correct@@6) (=> (= (ControlFlow 0 235393) 235409) anon10_Else_correct@@6))))))
(let ((inline$$InitEventStore$0$anon0_correct@@14  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@16 T@$1_Event_EventHandle) ) (! (let ((stream@@15 (|Select__T@[$1_Event_EventHandle]Multiset_91859_| (|streams#$EventStore| $es) handle@@16)))
 (and (= (|l#Multiset_91859| stream@@15) 0) (forall ((v@@56 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_91859| stream@@15) v@@56) 0)
 :qid |RecoveryAddresscvc5bpl.134:13|
 :skolemid |2|
))))
 :qid |RecoveryAddresscvc5bpl.2787:13|
 :skolemid |79|
))) (= (ControlFlow 0 235272) 235393)) anon0$1_correct@@14)))
(let ((anon0_correct@@14  (=> (= (ControlFlow 0 316397) 235272) inline$$InitEventStore$0$anon0_correct@@14)))
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
 (=> (= (ControlFlow 0 0) 316896) (let ((anon12_Else_correct@@3  (=> (not $abort_flag@0@@4) (=> (and (= $t8@0@@5 (|$compliance_public_key#$1_DualAttestation_Credential| $t7@1@@1)) (= $t8@0@@5 $t8@0@@5)) (and (=> (= (ControlFlow 0 236198) (- 0 317220)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) _$t0@@15)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) _$t0@@15))) (and (=> (= (ControlFlow 0 236198) (- 0 317231)) (= $t8@0@@5 (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) _$t0@@15)))) (=> (= $t8@0@@5 (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) _$t0@@15))) (and (=> (= (ControlFlow 0 236198) (- 0 317242)) (forall ((addr1@@36 Int) ) (!  (=> (|$IsValid'address'| addr1@@36) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@36) (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@36)))
 :qid |RecoveryAddresscvc5bpl.15152:15|
 :skolemid |318|
))) (=> (forall ((addr1@@37 Int) ) (!  (=> (|$IsValid'address'| addr1@@37) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@37) (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@37)))
 :qid |RecoveryAddresscvc5bpl.15152:15|
 :skolemid |318|
)) (and (=> (= (ControlFlow 0 236198) (- 0 317267)) (forall ((addr1@@38 Int) ) (!  (=> (|$IsValid'address'| addr1@@38) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@38)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@38))))
 :qid |RecoveryAddresscvc5bpl.15157:15|
 :skolemid |319|
))) (=> (forall ((addr1@@39 Int) ) (!  (=> (|$IsValid'address'| addr1@@39) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@39)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@39))))
 :qid |RecoveryAddresscvc5bpl.15157:15|
 :skolemid |319|
)) (and (=> (= (ControlFlow 0 236198) (- 0 317296)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)))) (and (=> (= (ControlFlow 0 236198) (- 0 317313)) (forall ((addr1@@40 Int) ) (!  (=> (|$IsValid'address'| addr1@@40) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@40) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@40)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@40)))))
 :qid |RecoveryAddresscvc5bpl.15167:15|
 :skolemid |320|
))) (=> (forall ((addr1@@41 Int) ) (!  (=> (|$IsValid'address'| addr1@@41) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@41) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@41)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@41)))))
 :qid |RecoveryAddresscvc5bpl.15167:15|
 :skolemid |320|
)) (=> (= (ControlFlow 0 236198) (- 0 317349)) (forall ((addr1@@42 Int) ) (!  (=> (|$IsValid'address'| addr1@@42) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@42) (= (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@42)) (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@42)))))
 :qid |RecoveryAddresscvc5bpl.15172:15|
 :skolemid |321|
)))))))))))))))))))
(let ((L3_correct@@2  (and (=> (= (ControlFlow 0 235988) (- 0 317173)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) _$t0@@15))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) _$t0@@15)) (=> (= (ControlFlow 0 235988) (- 0 317179)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) _$t0@@15)) (= 5 $t6@0@@2)))))))
(let ((anon12_Then_correct@@3  (=> (and (and $abort_flag@0@@4 (= $abort_code@1@@4 $abort_code@1@@4)) (and (= $t6@0@@2 $abort_code@1@@4) (= (ControlFlow 0 236212) 235988))) L3_correct@@2)))
(let ((anon11_Then$1_correct@@2  (=> (= $t7@1@@1 $t7@@4) (=> (and (= $abort_flag@0@@4 true) (= $abort_code@1@@4 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 236264) 236212) anon12_Then_correct@@3) (=> (= (ControlFlow 0 236264) 236198) anon12_Else_correct@@3))))))
(let ((anon11_Then_correct@@8  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) _$t0@@15)) (= (ControlFlow 0 236262) 236264)) anon11_Then$1_correct@@2)))
(let ((anon11_Else_correct@@8  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) _$t0@@15) (=> (and (and (= $t7@0@@1 (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) _$t0@@15)) (= $t7@1@@1 $t7@0@@1)) (and (= $abort_flag@0@@4 false) (= $abort_code@1@@4 $abort_code@0@@4))) (and (=> (= (ControlFlow 0 236006) 236212) anon12_Then_correct@@3) (=> (= (ControlFlow 0 236006) 236198) anon12_Else_correct@@3))))))
(let ((anon10_Then_correct@@7  (=> $t3@0@@1 (and (=> (= (ControlFlow 0 235992) 236262) anon11_Then_correct@@8) (=> (= (ControlFlow 0 235992) 236006) anon11_Else_correct@@8)))))
(let ((anon10_Else_correct@@7  (=> (and (and (not $t3@0@@1) (= $t5@@9 $t5@@9)) (and (= $t6@0@@2 $t5@@9) (= (ControlFlow 0 235956) 235988))) L3_correct@@2)))
(let ((anon0$1_correct@@15  (=> (and (forall ((addr1@@43 Int) ) (!  (=> (|$IsValid'address'| addr1@@43) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@43) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@43) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@43)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@43) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@43)) 2)))))
 :qid |RecoveryAddresscvc5bpl.15049:20|
 :skolemid |316|
)) (|$IsValid'address'| _$t0@@15)) (=> (and (and (and (forall (($a_0@@33 Int) ) (! (let (($rsc@@33 (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) $a_0@@33)))
(|$IsValid'$1_DualAttestation_Credential'| $rsc@@33))
 :qid |RecoveryAddresscvc5bpl.15056:20|
 :skolemid |317|
 :pattern ( (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) $a_0@@33))
)) (= _$t0@@15 _$t0@@15)) (and (= $t3@0@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) _$t0@@15)) (|$IsValid'u64'| 0))) (and (and (|$IsValid'u64'| $t5@@9) (= $t5@@9 5)) (and (= $t5@@9 $t5@@9) (= $t3@0@@1 $t3@0@@1)))) (and (=> (= (ControlFlow 0 235940) 235992) anon10_Then_correct@@7) (=> (= (ControlFlow 0 235940) 235956) anon10_Else_correct@@7))))))
(let ((inline$$InitEventStore$0$anon0_correct@@15  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@17 T@$1_Event_EventHandle) ) (! (let ((stream@@16 (|Select__T@[$1_Event_EventHandle]Multiset_91859_| (|streams#$EventStore| $es) handle@@17)))
 (and (= (|l#Multiset_91859| stream@@16) 0) (forall ((v@@57 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_91859| stream@@16) v@@57) 0)
 :qid |RecoveryAddresscvc5bpl.134:13|
 :skolemid |2|
))))
 :qid |RecoveryAddresscvc5bpl.2787:13|
 :skolemid |79|
))) (= (ControlFlow 0 235819) 235940)) anon0$1_correct@@15)))
(let ((anon0_correct@@15  (=> (= (ControlFlow 0 316896) 235819) inline$$InitEventStore$0$anon0_correct@@15)))
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
 (=> (= (ControlFlow 0 0) 317393) (let ((anon7_Then_correct  (=> $t4@@6 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@16)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@16))) (= 7 $t5@@10)) (and (= $t5@@10 $t5@@10) (= (ControlFlow 0 236779) (- 0 317619)))) false))))
(let ((L3_correct@@3  (=> (= $t1@0 $t1@0) (and (=> (= (ControlFlow 0 236677) (- 0 317676)) (not false)) (=> (not false) (and (=> (= (ControlFlow 0 236677) (- 0 317683)) (= $t1@0 (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@16) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@16) _$t0@@16 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@16))) _$t0@@16))) (=> (= $t1@0 (ite (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@16) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@16) _$t0@@16 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@16))) _$t0@@16)) (and (=> (= (ControlFlow 0 236677) (- 0 317696)) (forall ((addr1@@44 Int) ) (!  (=> (|$IsValid'address'| addr1@@44) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@44) (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@44)))
 :qid |RecoveryAddresscvc5bpl.15346:15|
 :skolemid |325|
))) (=> (forall ((addr1@@45 Int) ) (!  (=> (|$IsValid'address'| addr1@@45) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@45) (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@45)))
 :qid |RecoveryAddresscvc5bpl.15346:15|
 :skolemid |325|
)) (and (=> (= (ControlFlow 0 236677) (- 0 317721)) (forall ((addr1@@46 Int) ) (!  (=> (|$IsValid'address'| addr1@@46) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@46)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@46))))
 :qid |RecoveryAddresscvc5bpl.15351:15|
 :skolemid |326|
))) (=> (forall ((addr1@@47 Int) ) (!  (=> (|$IsValid'address'| addr1@@47) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@47)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@47))))
 :qid |RecoveryAddresscvc5bpl.15351:15|
 :skolemid |326|
)) (and (=> (= (ControlFlow 0 236677) (- 0 317750)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)))) (and (=> (= (ControlFlow 0 236677) (- 0 317767)) (forall ((addr1@@48 Int) ) (!  (=> (|$IsValid'address'| addr1@@48) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@48) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@48)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@48)))))
 :qid |RecoveryAddresscvc5bpl.15361:15|
 :skolemid |327|
))) (=> (forall ((addr1@@49 Int) ) (!  (=> (|$IsValid'address'| addr1@@49) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@49) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@49)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@49)))))
 :qid |RecoveryAddresscvc5bpl.15361:15|
 :skolemid |327|
)) (=> (= (ControlFlow 0 236677) (- 0 317803)) (forall ((addr1@@50 Int) ) (!  (=> (|$IsValid'address'| addr1@@50) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@50) (= (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@50)) (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@50)))))
 :qid |RecoveryAddresscvc5bpl.15366:15|
 :skolemid |328|
))))))))))))))))))
(let ((anon7_Else_correct  (=> (and (not $t4@@6) (|$IsValid'address'| $t3@@6)) (=> (and (and (= $t3@@6 (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@16) _$t0@@16 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@16)))) (= $t3@@6 $t3@@6)) (and (= $t1@0 $t3@@6) (= (ControlFlow 0 236733) 236677))) L3_correct@@3))))
(let ((anon6_Then_correct  (=> (and $t2@@6 (= $t4@@6  (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@16)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@16))))) (and (=> (= (ControlFlow 0 236703) 236779) anon7_Then_correct) (=> (= (ControlFlow 0 236703) 236733) anon7_Else_correct)))))
(let ((anon6_Else_correct  (=> (and (and (not $t2@@6) (= _$t0@@16 _$t0@@16)) (and (= $t1@0 _$t0@@16) (= (ControlFlow 0 236499) 236677))) L3_correct@@3)))
(let ((anon0$1_correct@@16  (=> (and (forall ((child_addr@@3 Int) ) (!  (=> (|$IsValid'address'| child_addr@@3) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) child_addr@@3) (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) child_addr@@3)))))
 :qid |RecoveryAddresscvc5bpl.15220:20|
 :skolemid |322|
)) (|$IsValid'address'| _$t0@@16)) (=> (and (and (forall (($a_0@@34 Int) ) (! (let (($rsc@@34 (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) $a_0@@34)))
(|$IsValid'$1_VASP_ChildVASP'| $rsc@@34))
 :qid |RecoveryAddresscvc5bpl.15227:20|
 :skolemid |323|
 :pattern ( (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) $a_0@@34))
)) (forall (($a_0@@35 Int) ) (! (let (($rsc@@35 (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_161035| $1_VASP_ParentVASP_$memory) $a_0@@35)))
(|$IsValid'$1_VASP_ParentVASP'| $rsc@@35))
 :qid |RecoveryAddresscvc5bpl.15231:20|
 :skolemid |324|
 :pattern ( (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_161035| $1_VASP_ParentVASP_$memory) $a_0@@35))
))) (and (= _$t0@@16 _$t0@@16) (= $t2@@6 (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@16)))) (and (=> (= (ControlFlow 0 236485) 236703) anon6_Then_correct) (=> (= (ControlFlow 0 236485) 236499) anon6_Else_correct))))))
(let ((inline$$InitEventStore$0$anon0_correct@@16  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@18 T@$1_Event_EventHandle) ) (! (let ((stream@@17 (|Select__T@[$1_Event_EventHandle]Multiset_91859_| (|streams#$EventStore| $es) handle@@18)))
 (and (= (|l#Multiset_91859| stream@@17) 0) (forall ((v@@58 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_91859| stream@@17) v@@58) 0)
 :qid |RecoveryAddresscvc5bpl.134:13|
 :skolemid |2|
))))
 :qid |RecoveryAddresscvc5bpl.2787:13|
 :skolemid |79|
))) (= (ControlFlow 0 236364) 236485)) anon0$1_correct@@16)))
(let ((anon0_correct@@16  (=> (= (ControlFlow 0 317393) 236364) inline$$InitEventStore$0$anon0_correct@@16)))
anon0_correct@@16)))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t3@2 () (Seq Int))
(declare-fun |inline$$1_Vector_append'u8'$2$m'@1| () T@$Mutation_111899)
(declare-fun $t9@0 () T@$Mutation_111899)
(declare-fun $t10@0@@0 () (Seq Int))
(declare-fun $t3@1 () (Seq Int))
(declare-fun |inline$$1_Vector_append'u8'$1$m'@1| () T@$Mutation_111899)
(declare-fun $t7@0@@2 () T@$Mutation_111899)
(declare-fun call1formal@res@0 () (Seq Int))
(declare-fun $t3@0@@2 () (Seq Int))
(declare-fun |inline$$1_Vector_append'u8'$0$m'@1| () T@$Mutation_111899)
(declare-fun _$t2@@4 () Int)
(declare-fun $t4@0 () T@$Mutation_111899)
(declare-fun call1formal@res@0@@0 () (Seq Int))
(declare-fun _$t0@@17 () Int)
(declare-fun _$t1@@11 () (Seq Int))
(declare-fun $t4@@7 () T@$Mutation_111899)
(declare-fun $t7@@5 () T@$Mutation_111899)
(declare-fun $t9@@8 () T@$Mutation_111899)
(push 1)
(set-info :boogie-vc-id $1_DualAttestation_dual_attestation_message$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 317850) (let ((anon16_Else_correct@@3  (=> (not false) (=> (and (= $t3@2 (|v#$Mutation_111899| |inline$$1_Vector_append'u8'$2$m'@1|)) (= $t3@2 $t3@2)) (and (=> (= (ControlFlow 0 237433) (- 0 318389)) (not false)) (=> (not false) (and (=> (= (ControlFlow 0 237433) (- 0 318396)) (forall ((addr1@@51 Int) ) (!  (=> (|$IsValid'address'| addr1@@51) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@51) (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@51)))
 :qid |RecoveryAddresscvc5bpl.15541:15|
 :skolemid |329|
))) (=> (forall ((addr1@@52 Int) ) (!  (=> (|$IsValid'address'| addr1@@52) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@52) (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@52)))
 :qid |RecoveryAddresscvc5bpl.15541:15|
 :skolemid |329|
)) (and (=> (= (ControlFlow 0 237433) (- 0 318421)) (forall ((addr1@@53 Int) ) (!  (=> (|$IsValid'address'| addr1@@53) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@53)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@53))))
 :qid |RecoveryAddresscvc5bpl.15546:15|
 :skolemid |330|
))) (=> (forall ((addr1@@54 Int) ) (!  (=> (|$IsValid'address'| addr1@@54) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@54)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@54))))
 :qid |RecoveryAddresscvc5bpl.15546:15|
 :skolemid |330|
)) (and (=> (= (ControlFlow 0 237433) (- 0 318450)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)))) (and (=> (= (ControlFlow 0 237433) (- 0 318467)) (forall ((addr1@@55 Int) ) (!  (=> (|$IsValid'address'| addr1@@55) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@55) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@55)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@55)))))
 :qid |RecoveryAddresscvc5bpl.15556:15|
 :skolemid |331|
))) (=> (forall ((addr1@@56 Int) ) (!  (=> (|$IsValid'address'| addr1@@56) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@56) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@56)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@56)))))
 :qid |RecoveryAddresscvc5bpl.15556:15|
 :skolemid |331|
)) (=> (= (ControlFlow 0 237433) (- 0 318503)) (forall ((addr1@@57 Int) ) (!  (=> (|$IsValid'address'| addr1@@57) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@57) (= (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@57)) (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@57)))))
 :qid |RecoveryAddresscvc5bpl.15561:15|
 :skolemid |332|
)))))))))))))))))
(let ((anon16_Then_correct@@3 true))
(let ((|inline$$1_Vector_append'u8'$2$anon0_correct|  (=> (= |inline$$1_Vector_append'u8'$2$m'@1| ($Mutation_111899 (|l#$Mutation_111899| $t9@0) (|p#$Mutation_111899| $t9@0) (seq.++ (|v#$Mutation_111899| $t9@0) $t10@0@@0))) (and (=> (= (ControlFlow 0 237249) 237447) anon16_Then_correct@@3) (=> (= (ControlFlow 0 237249) 237433) anon16_Else_correct@@3)))))
(let ((anon15_Else_correct@@3  (=> (and (not false) (= $t3@1 (|v#$Mutation_111899| |inline$$1_Vector_append'u8'$1$m'@1|))) (=> (and (and (= $t9@0 ($Mutation_111899 ($Local 3) (as seq.empty (Seq Int)) $t3@1)) (= $t10@0@@0 (seq.++ (seq.++ (seq.++ (seq.++ (seq.++ (seq.++ (seq.++ (seq.unit 64) (seq.unit 64)) (seq.unit 36)) (seq.unit 36)) (seq.++ (seq.++ (seq.++ (seq.unit 68) (seq.unit 73)) (seq.unit 69)) (seq.unit 77))) (seq.++ (seq.++ (seq.++ (seq.unit 95) (seq.unit 65)) (seq.unit 84)) (seq.unit 84))) (seq.++ (seq.++ (seq.++ (seq.unit 69) (seq.unit 83)) (seq.unit 84)) (seq.unit 36))) (seq.++ (seq.++ (seq.unit 36) (seq.unit 64)) (seq.unit 64))))) (and (|$IsValid'vec'u8''| $t10@0@@0) (= (ControlFlow 0 237255) 237249))) |inline$$1_Vector_append'u8'$2$anon0_correct|))))
(let ((anon15_Then_correct@@3 true))
(let ((|inline$$1_Vector_append'u8'$1$anon0_correct|  (=> (= |inline$$1_Vector_append'u8'$1$m'@1| ($Mutation_111899 (|l#$Mutation_111899| $t7@0@@2) (|p#$Mutation_111899| $t7@0@@2) (seq.++ (|v#$Mutation_111899| $t7@0@@2) call1formal@res@0))) (and (=> (= (ControlFlow 0 237108) 237471) anon15_Then_correct@@3) (=> (= (ControlFlow 0 237108) 237255) anon15_Else_correct@@3)))))
(let ((anon14_Else_correct@@4  (=> (and (not false) (= (ControlFlow 0 237114) 237108)) |inline$$1_Vector_append'u8'$1$anon0_correct|)))
(let ((anon14_Then_correct@@4 true))
(let ((anon13_Else_correct@@1  (=> (and (and (not false) (= $t3@0@@2 (|v#$Mutation_111899| |inline$$1_Vector_append'u8'$0$m'@1|))) (and (= $t7@0@@2 ($Mutation_111899 ($Local 3) (as seq.empty (Seq Int)) $t3@0@@2)) (= call1formal@res@0 (|$1_BCS_serialize'u64'| _$t2@@4)))) (and (=> (= (ControlFlow 0 237051) 237485) anon14_Then_correct@@4) (=> (= (ControlFlow 0 237051) 237114) anon14_Else_correct@@4)))))
(let ((anon13_Then_correct@@1 true))
(let ((|inline$$1_Vector_append'u8'$0$anon0_correct|  (=> (= |inline$$1_Vector_append'u8'$0$m'@1| ($Mutation_111899 (|l#$Mutation_111899| $t4@0) (|p#$Mutation_111899| $t4@0) (seq.++ (|v#$Mutation_111899| $t4@0) call1formal@res@0@@0))) (and (=> (= (ControlFlow 0 237021) 237499) anon13_Then_correct@@1) (=> (= (ControlFlow 0 237021) 237051) anon13_Else_correct@@1)))))
(let ((anon12_Else_correct@@4  (=> (and (not false) (= (ControlFlow 0 237027) 237021)) |inline$$1_Vector_append'u8'$0$anon0_correct|)))
(let ((anon12_Then_correct@@4 true))
(let ((anon0$1_correct@@17  (=> (|$IsValid'address'| _$t0@@17) (=> (and (and (and (|$IsValid'vec'u8''| _$t1@@11) (|$IsValid'u64'| _$t2@@4)) (and (= _$t0@@17 _$t0@@17) (= _$t1@@11 _$t1@@11))) (and (and (= _$t2@@4 _$t2@@4) (= _$t1@@11 _$t1@@11)) (and (= $t4@0 ($Mutation_111899 ($Local 3) (as seq.empty (Seq Int)) _$t1@@11)) (= call1formal@res@0@@0 (|$1_BCS_serialize'address'| _$t0@@17))))) (and (=> (= (ControlFlow 0 236964) 237513) anon12_Then_correct@@4) (=> (= (ControlFlow 0 236964) 237027) anon12_Else_correct@@4))))))
(let ((inline$$InitEventStore$0$anon0_correct@@17  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@19 T@$1_Event_EventHandle) ) (! (let ((stream@@18 (|Select__T@[$1_Event_EventHandle]Multiset_91859_| (|streams#$EventStore| $es) handle@@19)))
 (and (= (|l#Multiset_91859| stream@@18) 0) (forall ((v@@59 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_91859| stream@@18) v@@59) 0)
 :qid |RecoveryAddresscvc5bpl.134:13|
 :skolemid |2|
))))
 :qid |RecoveryAddresscvc5bpl.2787:13|
 :skolemid |79|
))) (= (ControlFlow 0 236894) 236964)) anon0$1_correct@@17)))
(let ((anon0_correct@@17  (=> (and (and (= (seq.len (|p#$Mutation_111899| $t4@@7)) 0) (= (seq.len (|p#$Mutation_111899| $t7@@5)) 0)) (and (= (seq.len (|p#$Mutation_111899| $t9@@8)) 0) (= (ControlFlow 0 236904) 236894))) inline$$InitEventStore$0$anon0_correct@@17)))
(let ((PreconditionGeneratedEntry_correct@@0  (=> (= (ControlFlow 0 317850) 236904) anon0_correct@@17)))
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
 (=> (= (ControlFlow 0 0) 318564) (let ((L15_correct  (and (=> (= (ControlFlow 0 238597) (- 0 319594)) (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@8) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@8) 1) _$t2@@5 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@8) 2) (div _$t2@@5 2) (+ 18446744073709551615 1)))) 18446744073709551615))) (=> (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@8) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@8) 1) _$t2@@5 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@8) 2) (div _$t2@@5 2) (+ 18446744073709551615 1)))) 18446744073709551615)) (=> (= (ControlFlow 0 238597) (- 0 319617)) (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)) (= 5 $t11@@3)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 $t11@@3))) (and (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@8) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@8) 1) _$t2@@5 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@8) 2) (div _$t2@@5 2) (+ 18446744073709551615 1)))) 18446744073709551615) (= 8 $t11@@3))))))))
(let ((anon30_Then_correct@@1  (=> $t27 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@12)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@12))) (= 7 $t11@@3)) (and (= $t11@@3 $t11@@3) (= (ControlFlow 0 238513) 238597))) L15_correct))))
(let ((anon29_Then_correct@@1  (=> $t25@@0 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@18)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@18))) (= 7 $t11@@3)) (and (= $t11@@3 $t11@@3) (= (ControlFlow 0 238635) 238597))) L15_correct))))
(let ((anon24_Then_correct@@0  (=> (and (and $t14@@4 (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 $t11@@3)) (and (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t12@@3) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t12@@3) 1) _$t2@@5 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t12@@3) 2) (div _$t2@@5 2) (+ 18446744073709551615 1)))) 18446744073709551615) (= 8 $t11@@3)))) (and (= $t11@@3 $t11@@3) (= (ControlFlow 0 238745) 238597))) L15_correct)))
(let ((anon23_Then_correct@@0  (=> $t10@@1 (=> (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)) (= 5 $t11@@3)) (and (= $t11@@3 $t11@@3) (= (ControlFlow 0 238771) 238597))) L15_correct))))
(let ((L14_correct  (and (=> (= (ControlFlow 0 238365) (- 0 319539)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (and (=> (= (ControlFlow 0 238365) (- 0 319549)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 238365) (- 0 319559)) (not (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@8) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@8) 1) _$t2@@5 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@8) 2) (div _$t2@@5 2) (+ 18446744073709551615 1)))) 18446744073709551615))) (=> (not (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@8) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@8) 1) _$t2@@5 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@8) 2) (div _$t2@@5 2) (+ 18446744073709551615 1)))) 18446744073709551615)) (=> (= (ControlFlow 0 238365) (- 0 319573)) (= $t18@0@@0  (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) _$t2@@5 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div _$t2@@5 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@18 _$t1@@12))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@18) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@18)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@12) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@12))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@18) _$t0@@18 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@18))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@12) _$t1@@12 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@12)))))))))))))))))
(let ((L13_correct  (=> (= $t4@0@@0 $t4@0@@0) (=> (and (= $t18@0@@0 $t4@0@@0) (= (ControlFlow 0 238305) 238365)) L14_correct))))
(let ((anon30_Else_correct@@1  (=> (not $t27) (=> (and (|$IsValid'address'| $t26) (= $t26 (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@12) _$t1@@12 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@12))))) (=> (and (and (= $t28@0  (not (= $t24@@1 $t26))) (= $t28@0 $t28@0)) (and (= $t4@0@@0 $t28@0) (= (ControlFlow 0 238475) 238305))) L13_correct)))))
(let ((anon29_Else_correct@@1  (=> (and (and (not $t25@@0) (|$IsValid'address'| $t24@@1)) (and (= $t24@@1 (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@18) _$t0@@18 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@18)))) (= $t27  (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@12)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@12)))))) (and (=> (= (ControlFlow 0 238435) 238513) anon30_Then_correct@@1) (=> (= (ControlFlow 0 238435) 238475) anon30_Else_correct@@1)))))
(let ((anon28_Then_correct@@1  (=> (and $t3@0@@3 (= $t25@@0  (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@18)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@18))))) (and (=> (= (ControlFlow 0 238391) 238635) anon29_Then_correct@@1) (=> (= (ControlFlow 0 238391) 238435) anon29_Else_correct@@1)))))
(let ((anon28_Else_correct@@1  (=> (and (and (not $t3@0@@3) (= false false)) (and (= $t4@0@@0 false) (= (ControlFlow 0 238293) 238305))) L13_correct)))
(let ((anon27_Else_correct@@1  (=> (not $t21@@0) (=> (and (= false false) (= $t3@0@@3 false)) (and (=> (= (ControlFlow 0 238271) 238391) anon28_Then_correct@@1) (=> (= (ControlFlow 0 238271) 238293) anon28_Else_correct@@1))))))
(let ((anon27_Then_correct@@1  (=> (and (and $t21@@0 (= $t22@@0  (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@12) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@12)))) (and (= $t22@@0 $t22@@0) (= $t3@0@@3 $t22@@0))) (and (=> (= (ControlFlow 0 238663) 238391) anon28_Then_correct@@1) (=> (= (ControlFlow 0 238663) 238293) anon28_Else_correct@@1)))))
(let ((anon26_Else_correct@@1  (=> (and (not $t19@0@@0) (= $t21@@0  (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@18) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@18)))) (and (=> (= (ControlFlow 0 238251) 238663) anon27_Then_correct@@1) (=> (= (ControlFlow 0 238251) 238271) anon27_Else_correct@@1)))))
(let ((anon26_Then_correct@@1  (=> (and (and $t19@0@@0 (= false false)) (and (= $t18@0@@0 false) (= (ControlFlow 0 238681) 238365))) L14_correct)))
(let ((anon25_Else_correct@@0  (=> (and (not inline$$Not$0$dst@1@@5) (= $t19@0@@0 (= _$t0@@18 _$t1@@12))) (and (=> (= (ControlFlow 0 238229) 238681) anon26_Then_correct@@1) (=> (= (ControlFlow 0 238229) 238251) anon26_Else_correct@@1)))))
(let ((anon25_Then_correct@@0  (=> (and (and inline$$Not$0$dst@1@@5 (= false false)) (and (= $t18@0@@0 false) (= (ControlFlow 0 238699) 238365))) L14_correct)))
(let ((inline$$Not$0$anon0_correct@@5  (=> (= inline$$Not$0$dst@1@@5  (not inline$$Ge$0$dst@1)) (and (=> (= (ControlFlow 0 238209) 238699) anon25_Then_correct@@0) (=> (= (ControlFlow 0 238209) 238229) anon25_Else_correct@@0)))))
(let ((anon24_Else$1_correct@@0  (=> (and (= inline$$Ge$0$dst@1 inline$$Ge$0$dst@1) (= (ControlFlow 0 238215) 238209)) inline$$Not$0$anon0_correct@@5)))
(let ((inline$$Ge$0$anon0_correct  (=> (and (= inline$$Ge$0$dst@1 (>= $t13@@2 $t9@@9)) (= (ControlFlow 0 238163) 238215)) anon24_Else$1_correct@@0)))
(let ((anon24_Else_correct@@0  (=> (not $t14@@4) (=> (and (and (|$IsValid'u64'| $t13@@2) (= $t13@@2 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) _$t2@@5 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div _$t2@@5 2) (+ 18446744073709551615 1)))))) (and (= $t13@@2 $t13@@2) (= (ControlFlow 0 238169) 238163))) inline$$Ge$0$anon0_correct))))
(let ((anon23_Else_correct@@0  (=> (and (not $t10@@1) (|$IsValid'u64'| $t9@@9)) (=> (and (and (= $t9@@9 (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (= $t9@@9 $t9@@9)) (and (= $t12@@3 (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (= $t14@@4  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t12@@3) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t12@@3) 1) _$t2@@5 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t12@@3) 2) (div _$t2@@5 2) (+ 18446744073709551615 1)))) 18446744073709551615))))) (and (=> (= (ControlFlow 0 238095) 238745) anon24_Then_correct@@0) (=> (= (ControlFlow 0 238095) 238169) anon24_Else_correct@@0))))))
(let ((anon0$1_correct@@18  (=> (and (and (forall ((addr@@101 Int) ) (!  (=> (|$IsValid'address'| addr@@101) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_149233| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr@@101) (|Select__T@[Int]Bool_| (|domain#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |RecoveryAddresscvc5bpl.15637:22|
 :skolemid |333|
)) (forall ((addr@@102 Int) ) (!  (=> (|$IsValid'address'| addr@@102) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_149324| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr@@102) (|Select__T@[Int]Bool_| (|domain#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |RecoveryAddresscvc5bpl.15637:222|
 :skolemid |334|
))) (forall ((addr@@103 Int) ) (!  (=> (|$IsValid'address'| addr@@103) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_149415| |$1_Diem_Preburn'#0'_$memory|) addr@@103) (|Select__T@[Int]Bool_| (|domain#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |RecoveryAddresscvc5bpl.15637:423|
 :skolemid |335|
))) (=> (and (and (and (and (and (forall ((addr@@104 Int) ) (!  (=> (|$IsValid'address'| addr@@104) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_149642| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr@@104) (|Select__T@[Int]Bool_| (|domain#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |RecoveryAddresscvc5bpl.15641:22|
 :skolemid |336|
)) (forall ((addr@@105 Int) ) (!  (=> (|$IsValid'address'| addr@@105) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_149741| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr@@105) (|Select__T@[Int]Bool_| (|domain#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |RecoveryAddresscvc5bpl.15641:227|
 :skolemid |337|
))) (forall ((addr@@106 Int) ) (!  (=> (|$IsValid'address'| addr@@106) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_149840| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@106) (|Select__T@[Int]Bool_| (|domain#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |RecoveryAddresscvc5bpl.15641:433|
 :skolemid |338|
))) (and (forall ((child_addr@@4 Int) ) (!  (=> (|$IsValid'address'| child_addr@@4) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) child_addr@@4) (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) child_addr@@4)))))
 :qid |RecoveryAddresscvc5bpl.15645:20|
 :skolemid |339|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)))) (and (and (|$IsValid'address'| _$t0@@18) (|$IsValid'address'| _$t1@@12)) (and (|$IsValid'u64'| _$t2@@5) (forall (($a_0@@36 Int) ) (! (let (($rsc@@36 (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0@@36)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'#0''| $rsc@@36) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc@@36)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc@@36) 10000000000))))
 :qid |RecoveryAddresscvc5bpl.15662:20|
 :skolemid |340|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0@@36))
))))) (and (and (and (forall (($a_0@@37 Int) ) (! (let (($rsc@@37 (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) $a_0@@37)))
(|$IsValid'$1_VASP_ChildVASP'| $rsc@@37))
 :qid |RecoveryAddresscvc5bpl.15666:20|
 :skolemid |341|
 :pattern ( (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) $a_0@@37))
)) (forall (($a_0@@38 Int) ) (! (let (($rsc@@38 (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_161035| $1_VASP_ParentVASP_$memory) $a_0@@38)))
(|$IsValid'$1_VASP_ParentVASP'| $rsc@@38))
 :qid |RecoveryAddresscvc5bpl.15670:20|
 :skolemid |342|
 :pattern ( (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_161035| $1_VASP_ParentVASP_$memory) $a_0@@38))
))) (and (forall (($a_0@@39 Int) ) (! (let (($rsc@@39 (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) $a_0@@39)))
(|$IsValid'$1_DualAttestation_Limit'| $rsc@@39))
 :qid |RecoveryAddresscvc5bpl.15674:20|
 :skolemid |343|
 :pattern ( (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) $a_0@@39))
)) (= $t8@@8 (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))) (and (and (= _$t0@@18 _$t0@@18) (= _$t1@@12 _$t1@@12)) (and (= _$t2@@5 _$t2@@5) (= $t10@@1  (not (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))))))) (and (=> (= (ControlFlow 0 238035) 238771) anon23_Then_correct@@0) (=> (= (ControlFlow 0 238035) 238095) anon23_Else_correct@@0))))))
(let ((inline$$InitEventStore$0$anon0_correct@@18  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@20 T@$1_Event_EventHandle) ) (! (let ((stream@@19 (|Select__T@[$1_Event_EventHandle]Multiset_91859_| (|streams#$EventStore| $es) handle@@20)))
 (and (= (|l#Multiset_91859| stream@@19) 0) (forall ((v@@60 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_91859| stream@@19) v@@60) 0)
 :qid |RecoveryAddresscvc5bpl.134:13|
 :skolemid |2|
))))
 :qid |RecoveryAddresscvc5bpl.2787:13|
 :skolemid |79|
))) (= (ControlFlow 0 237678) 238035)) anon0$1_correct@@18)))
(let ((anon0_correct@@18  (=> (= (ControlFlow 0 318564) 237678) inline$$InitEventStore$0$anon0_correct@@18)))
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
 (=> (= (ControlFlow 0 0) 319681) (let ((L15_correct@@0  (and (=> (= (ControlFlow 0 239832) (- 0 320711)) (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@9) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@9) 1) _$t2@@6 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@9) 2) (div _$t2@@6 2) (+ 18446744073709551615 1)))) 18446744073709551615))) (=> (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@9) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@9) 1) _$t2@@6 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@9) 2) (div _$t2@@6 2) (+ 18446744073709551615 1)))) 18446744073709551615)) (=> (= (ControlFlow 0 239832) (- 0 320734)) (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)) (= 5 $t11@@4)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= 5 $t11@@4))) (and (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@9) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@9) 1) _$t2@@6 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@9) 2) (div _$t2@@6 2) (+ 18446744073709551615 1)))) 18446744073709551615) (= 8 $t11@@4))))))))
(let ((anon30_Then_correct@@2  (=> $t27@@0 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@13)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@13))) (= 7 $t11@@4)) (and (= $t11@@4 $t11@@4) (= (ControlFlow 0 239748) 239832))) L15_correct@@0))))
(let ((anon29_Then_correct@@2  (=> $t25@@1 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@19)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@19))) (= 7 $t11@@4)) (and (= $t11@@4 $t11@@4) (= (ControlFlow 0 239870) 239832))) L15_correct@@0))))
(let ((anon24_Then_correct@@1  (=> (and (and $t14@@5 (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= 5 $t11@@4)) (and (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t12@@4) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t12@@4) 1) _$t2@@6 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t12@@4) 2) (div _$t2@@6 2) (+ 18446744073709551615 1)))) 18446744073709551615) (= 8 $t11@@4)))) (and (= $t11@@4 $t11@@4) (= (ControlFlow 0 239980) 239832))) L15_correct@@0)))
(let ((anon23_Then_correct@@1  (=> $t10@@2 (=> (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)) (= 5 $t11@@4)) (and (= $t11@@4 $t11@@4) (= (ControlFlow 0 240006) 239832))) L15_correct@@0))))
(let ((L14_correct@@0  (and (=> (= (ControlFlow 0 239600) (- 0 320656)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (and (=> (= (ControlFlow 0 239600) (- 0 320666)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 239600) (- 0 320676)) (not (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@9) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@9) 1) _$t2@@6 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@9) 2) (div _$t2@@6 2) (+ 18446744073709551615 1)))) 18446744073709551615))) (=> (not (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@9) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@9) 1) _$t2@@6 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@9) 2) (div _$t2@@6 2) (+ 18446744073709551615 1)))) 18446744073709551615)) (=> (= (ControlFlow 0 239600) (- 0 320690)) (= $t18@0@@1  (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 1) _$t2@@6 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 2) (div _$t2@@6 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@19 _$t1@@13))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@19) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@19)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@13) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@13))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@19) _$t0@@19 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@19))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@13) _$t1@@13 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@13)))))))))))))))))
(let ((L13_correct@@0  (=> (= $t4@0@@1 $t4@0@@1) (=> (and (= $t18@0@@1 $t4@0@@1) (= (ControlFlow 0 239540) 239600)) L14_correct@@0))))
(let ((anon30_Else_correct@@2  (=> (not $t27@@0) (=> (and (|$IsValid'address'| $t26@@0) (= $t26@@0 (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@13) _$t1@@13 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@13))))) (=> (and (and (= $t28@0@@0  (not (= $t24@@2 $t26@@0))) (= $t28@0@@0 $t28@0@@0)) (and (= $t4@0@@1 $t28@0@@0) (= (ControlFlow 0 239710) 239540))) L13_correct@@0)))))
(let ((anon29_Else_correct@@2  (=> (and (and (not $t25@@1) (|$IsValid'address'| $t24@@2)) (and (= $t24@@2 (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@19) _$t0@@19 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@19)))) (= $t27@@0  (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@13)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@13)))))) (and (=> (= (ControlFlow 0 239670) 239748) anon30_Then_correct@@2) (=> (= (ControlFlow 0 239670) 239710) anon30_Else_correct@@2)))))
(let ((anon28_Then_correct@@2  (=> (and $t3@0@@4 (= $t25@@1  (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@19)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@19))))) (and (=> (= (ControlFlow 0 239626) 239870) anon29_Then_correct@@2) (=> (= (ControlFlow 0 239626) 239670) anon29_Else_correct@@2)))))
(let ((anon28_Else_correct@@2  (=> (and (and (not $t3@0@@4) (= false false)) (and (= $t4@0@@1 false) (= (ControlFlow 0 239528) 239540))) L13_correct@@0)))
(let ((anon27_Else_correct@@2  (=> (not $t21@@1) (=> (and (= false false) (= $t3@0@@4 false)) (and (=> (= (ControlFlow 0 239506) 239626) anon28_Then_correct@@2) (=> (= (ControlFlow 0 239506) 239528) anon28_Else_correct@@2))))))
(let ((anon27_Then_correct@@2  (=> (and (and $t21@@1 (= $t22@@1  (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@13) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@13)))) (and (= $t22@@1 $t22@@1) (= $t3@0@@4 $t22@@1))) (and (=> (= (ControlFlow 0 239898) 239626) anon28_Then_correct@@2) (=> (= (ControlFlow 0 239898) 239528) anon28_Else_correct@@2)))))
(let ((anon26_Else_correct@@2  (=> (and (not $t19@0@@1) (= $t21@@1  (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@19) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@19)))) (and (=> (= (ControlFlow 0 239486) 239898) anon27_Then_correct@@2) (=> (= (ControlFlow 0 239486) 239506) anon27_Else_correct@@2)))))
(let ((anon26_Then_correct@@2  (=> (and (and $t19@0@@1 (= false false)) (and (= $t18@0@@1 false) (= (ControlFlow 0 239916) 239600))) L14_correct@@0)))
(let ((anon25_Else_correct@@1  (=> (and (not inline$$Not$0$dst@1@@6) (= $t19@0@@1 (= _$t0@@19 _$t1@@13))) (and (=> (= (ControlFlow 0 239464) 239916) anon26_Then_correct@@2) (=> (= (ControlFlow 0 239464) 239486) anon26_Else_correct@@2)))))
(let ((anon25_Then_correct@@1  (=> (and (and inline$$Not$0$dst@1@@6 (= false false)) (and (= $t18@0@@1 false) (= (ControlFlow 0 239934) 239600))) L14_correct@@0)))
(let ((inline$$Not$0$anon0_correct@@6  (=> (= inline$$Not$0$dst@1@@6  (not inline$$Ge$0$dst@1@@0)) (and (=> (= (ControlFlow 0 239444) 239934) anon25_Then_correct@@1) (=> (= (ControlFlow 0 239444) 239464) anon25_Else_correct@@1)))))
(let ((anon24_Else$1_correct@@1  (=> (and (= inline$$Ge$0$dst@1@@0 inline$$Ge$0$dst@1@@0) (= (ControlFlow 0 239450) 239444)) inline$$Not$0$anon0_correct@@6)))
(let ((inline$$Ge$0$anon0_correct@@0  (=> (and (= inline$$Ge$0$dst@1@@0 (>= $t13@@3 $t9@@10)) (= (ControlFlow 0 239398) 239450)) anon24_Else$1_correct@@1)))
(let ((anon24_Else_correct@@1  (=> (not $t14@@5) (=> (and (and (|$IsValid'u64'| $t13@@3) (= $t13@@3 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 1) _$t2@@6 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) 2) (div _$t2@@6 2) (+ 18446744073709551615 1)))))) (and (= $t13@@3 $t13@@3) (= (ControlFlow 0 239404) 239398))) inline$$Ge$0$anon0_correct@@0))))
(let ((anon23_Else_correct@@1  (=> (and (not $t10@@2) (|$IsValid'u64'| $t9@@10)) (=> (and (and (= $t9@@10 (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (= $t9@@10 $t9@@10)) (and (= $t12@@4 (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (= $t14@@5  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t12@@4) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t12@@4) 1) _$t2@@6 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t12@@4) 2) (div _$t2@@6 2) (+ 18446744073709551615 1)))) 18446744073709551615))))) (and (=> (= (ControlFlow 0 239330) 239980) anon24_Then_correct@@1) (=> (= (ControlFlow 0 239330) 239404) anon24_Else_correct@@1))))))
(let ((anon0$1_correct@@19  (=> (and (and (forall ((addr@@107 Int) ) (!  (=> (|$IsValid'address'| addr@@107) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_149233| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr@@107) (|Select__T@[Int]Bool_| (|domain#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |RecoveryAddresscvc5bpl.16140:22|
 :skolemid |344|
)) (forall ((addr@@108 Int) ) (!  (=> (|$IsValid'address'| addr@@108) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_149324| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr@@108) (|Select__T@[Int]Bool_| (|domain#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |RecoveryAddresscvc5bpl.16140:222|
 :skolemid |345|
))) (forall ((addr@@109 Int) ) (!  (=> (|$IsValid'address'| addr@@109) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_149415| |$1_Diem_Preburn'#0'_$memory|) addr@@109) (|Select__T@[Int]Bool_| (|domain#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |RecoveryAddresscvc5bpl.16140:423|
 :skolemid |346|
))) (=> (and (and (and (and (and (forall ((addr@@110 Int) ) (!  (=> (|$IsValid'address'| addr@@110) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_149642| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr@@110) (|Select__T@[Int]Bool_| (|domain#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |RecoveryAddresscvc5bpl.16144:22|
 :skolemid |347|
)) (forall ((addr@@111 Int) ) (!  (=> (|$IsValid'address'| addr@@111) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_149741| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr@@111) (|Select__T@[Int]Bool_| (|domain#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |RecoveryAddresscvc5bpl.16144:227|
 :skolemid |348|
))) (forall ((addr@@112 Int) ) (!  (=> (|$IsValid'address'| addr@@112) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_149840| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@112) (|Select__T@[Int]Bool_| (|domain#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |RecoveryAddresscvc5bpl.16144:433|
 :skolemid |349|
))) (and (forall ((child_addr@@5 Int) ) (!  (=> (|$IsValid'address'| child_addr@@5) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) child_addr@@5) (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) child_addr@@5)))))
 :qid |RecoveryAddresscvc5bpl.16148:20|
 :skolemid |350|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)))) (and (and (|$IsValid'address'| _$t0@@19) (|$IsValid'address'| _$t1@@13)) (and (|$IsValid'u64'| _$t2@@6) (forall (($a_0@@40 Int) ) (! (let (($rsc@@40 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) $a_0@@40)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| $rsc@@40) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $rsc@@40)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $rsc@@40) 10000000000))))
 :qid |RecoveryAddresscvc5bpl.16165:20|
 :skolemid |351|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) $a_0@@40))
))))) (and (and (and (forall (($a_0@@41 Int) ) (! (let (($rsc@@41 (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) $a_0@@41)))
(|$IsValid'$1_VASP_ChildVASP'| $rsc@@41))
 :qid |RecoveryAddresscvc5bpl.16169:20|
 :skolemid |352|
 :pattern ( (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) $a_0@@41))
)) (forall (($a_0@@42 Int) ) (! (let (($rsc@@42 (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_161035| $1_VASP_ParentVASP_$memory) $a_0@@42)))
(|$IsValid'$1_VASP_ParentVASP'| $rsc@@42))
 :qid |RecoveryAddresscvc5bpl.16173:20|
 :skolemid |353|
 :pattern ( (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_161035| $1_VASP_ParentVASP_$memory) $a_0@@42))
))) (and (forall (($a_0@@43 Int) ) (! (let (($rsc@@43 (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) $a_0@@43)))
(|$IsValid'$1_DualAttestation_Limit'| $rsc@@43))
 :qid |RecoveryAddresscvc5bpl.16177:20|
 :skolemid |354|
 :pattern ( (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) $a_0@@43))
)) (= $t8@@9 (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))))) (and (and (= _$t0@@19 _$t0@@19) (= _$t1@@13 _$t1@@13)) (and (= _$t2@@6 _$t2@@6) (= $t10@@2  (not (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))))))) (and (=> (= (ControlFlow 0 239270) 240006) anon23_Then_correct@@1) (=> (= (ControlFlow 0 239270) 239330) anon23_Else_correct@@1))))))
(let ((inline$$InitEventStore$0$anon0_correct@@19  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@21 T@$1_Event_EventHandle) ) (! (let ((stream@@20 (|Select__T@[$1_Event_EventHandle]Multiset_91859_| (|streams#$EventStore| $es) handle@@21)))
 (and (= (|l#Multiset_91859| stream@@20) 0) (forall ((v@@61 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_91859| stream@@20) v@@61) 0)
 :qid |RecoveryAddresscvc5bpl.134:13|
 :skolemid |2|
))))
 :qid |RecoveryAddresscvc5bpl.2787:13|
 :skolemid |79|
))) (= (ControlFlow 0 238913) 239270)) anon0$1_correct@@19)))
(let ((anon0_correct@@19  (=> (= (ControlFlow 0 319681) 238913) inline$$InitEventStore$0$anon0_correct@@19)))
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
 (=> (= (ControlFlow 0 0) 320798) (let ((L15_correct@@1  (and (=> (= (ControlFlow 0 241077) (- 0 321838)) (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@10) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@10) 1) _$t2@@7 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@10) 2) (div _$t2@@7 2) (+ 18446744073709551615 1)))) 18446744073709551615))) (=> (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@10) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@10) 1) _$t2@@7 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@10) 2) (div _$t2@@7 2) (+ 18446744073709551615 1)))) 18446744073709551615)) (=> (= (ControlFlow 0 241077) (- 0 321861)) (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)) (= 5 $t11@@5)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= 5 $t11@@5))) (and (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@10) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@10) 1) _$t2@@7 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@10) 2) (div _$t2@@7 2) (+ 18446744073709551615 1)))) 18446744073709551615) (= 8 $t11@@5))))))))
(let ((anon30_Then_correct@@3  (=> $t27@@1 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@14)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@14))) (= 7 $t11@@5)) (and (= $t11@@5 $t11@@5) (= (ControlFlow 0 240993) 241077))) L15_correct@@1))))
(let ((anon29_Then_correct@@3  (=> $t25@@2 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@20)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@20))) (= 7 $t11@@5)) (and (= $t11@@5 $t11@@5) (= (ControlFlow 0 241115) 241077))) L15_correct@@1))))
(let ((anon24_Then_correct@@2  (=> (and (and $t14@@6 (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= 5 $t11@@5)) (and (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t12@@5) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t12@@5) 1) _$t2@@7 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t12@@5) 2) (div _$t2@@7 2) (+ 18446744073709551615 1)))) 18446744073709551615) (= 8 $t11@@5)))) (and (= $t11@@5 $t11@@5) (= (ControlFlow 0 241225) 241077))) L15_correct@@1)))
(let ((anon23_Then_correct@@2  (=> $t10@@3 (=> (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)) (= 5 $t11@@5)) (and (= $t11@@5 $t11@@5) (= (ControlFlow 0 241251) 241077))) L15_correct@@1))))
(let ((L14_correct@@1  (and (=> (= (ControlFlow 0 240845) (- 0 321783)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (and (=> (= (ControlFlow 0 240845) (- 0 321793)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 240845) (- 0 321803)) (not (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@10) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@10) 1) _$t2@@7 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@10) 2) (div _$t2@@7 2) (+ 18446744073709551615 1)))) 18446744073709551615))) (=> (not (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@10) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@10) 1) _$t2@@7 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t8@@10) 2) (div _$t2@@7 2) (+ 18446744073709551615 1)))) 18446744073709551615)) (=> (= (ControlFlow 0 240845) (- 0 321817)) (= $t18@0@@2  (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 1) _$t2@@7 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 2) (div _$t2@@7 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0@@20 _$t1@@14))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@20) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@20)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@14) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@14))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@20) _$t0@@20 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@20))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@14) _$t1@@14 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@14)))))))))))))))))
(let ((L13_correct@@1  (=> (= $t4@0@@2 $t4@0@@2) (=> (and (= $t18@0@@2 $t4@0@@2) (= (ControlFlow 0 240785) 240845)) L14_correct@@1))))
(let ((anon30_Else_correct@@3  (=> (not $t27@@1) (=> (and (|$IsValid'address'| $t26@@1) (= $t26@@1 (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@14) _$t1@@14 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@14))))) (=> (and (and (= $t28@0@@1  (not (= $t24@@3 $t26@@1))) (= $t28@0@@1 $t28@0@@1)) (and (= $t4@0@@2 $t28@0@@1) (= (ControlFlow 0 240955) 240785))) L13_correct@@1)))))
(let ((anon29_Else_correct@@3  (=> (and (and (not $t25@@2) (|$IsValid'address'| $t24@@3)) (and (= $t24@@3 (ite (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@20) _$t0@@20 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@20)))) (= $t27@@1  (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@14)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@14)))))) (and (=> (= (ControlFlow 0 240915) 240993) anon30_Then_correct@@3) (=> (= (ControlFlow 0 240915) 240955) anon30_Else_correct@@3)))))
(let ((anon28_Then_correct@@3  (=> (and $t3@0@@5 (= $t25@@2  (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@20)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@20))))) (and (=> (= (ControlFlow 0 240871) 241115) anon29_Then_correct@@3) (=> (= (ControlFlow 0 240871) 240915) anon29_Else_correct@@3)))))
(let ((anon28_Else_correct@@3  (=> (and (and (not $t3@0@@5) (= false false)) (and (= $t4@0@@2 false) (= (ControlFlow 0 240773) 240785))) L13_correct@@1)))
(let ((anon27_Else_correct@@3  (=> (not $t21@@2) (=> (and (= false false) (= $t3@0@@5 false)) (and (=> (= (ControlFlow 0 240751) 240871) anon28_Then_correct@@3) (=> (= (ControlFlow 0 240751) 240773) anon28_Else_correct@@3))))))
(let ((anon27_Then_correct@@3  (=> (and (and $t21@@2 (= $t22@@2  (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t1@@14) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t1@@14)))) (and (= $t22@@2 $t22@@2) (= $t3@0@@5 $t22@@2))) (and (=> (= (ControlFlow 0 241143) 240871) anon28_Then_correct@@3) (=> (= (ControlFlow 0 241143) 240773) anon28_Else_correct@@3)))))
(let ((anon26_Else_correct@@3  (=> (and (not $t19@0@@2) (= $t21@@2  (or (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) _$t0@@20) (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) _$t0@@20)))) (and (=> (= (ControlFlow 0 240731) 241143) anon27_Then_correct@@3) (=> (= (ControlFlow 0 240731) 240751) anon27_Else_correct@@3)))))
(let ((anon26_Then_correct@@3  (=> (and (and $t19@0@@2 (= false false)) (and (= $t18@0@@2 false) (= (ControlFlow 0 241161) 240845))) L14_correct@@1)))
(let ((anon25_Else_correct@@2  (=> (and (not inline$$Not$0$dst@1@@7) (= $t19@0@@2 (= _$t0@@20 _$t1@@14))) (and (=> (= (ControlFlow 0 240709) 241161) anon26_Then_correct@@3) (=> (= (ControlFlow 0 240709) 240731) anon26_Else_correct@@3)))))
(let ((anon25_Then_correct@@2  (=> (and (and inline$$Not$0$dst@1@@7 (= false false)) (and (= $t18@0@@2 false) (= (ControlFlow 0 241179) 240845))) L14_correct@@1)))
(let ((inline$$Not$0$anon0_correct@@7  (=> (= inline$$Not$0$dst@1@@7  (not inline$$Ge$0$dst@1@@1)) (and (=> (= (ControlFlow 0 240689) 241179) anon25_Then_correct@@2) (=> (= (ControlFlow 0 240689) 240709) anon25_Else_correct@@2)))))
(let ((anon24_Else$1_correct@@2  (=> (and (= inline$$Ge$0$dst@1@@1 inline$$Ge$0$dst@1@@1) (= (ControlFlow 0 240695) 240689)) inline$$Not$0$anon0_correct@@7)))
(let ((inline$$Ge$0$anon0_correct@@1  (=> (and (= inline$$Ge$0$dst@1@@1 (>= $t13@@4 $t9@@11)) (= (ControlFlow 0 240643) 240695)) anon24_Else$1_correct@@2)))
(let ((anon24_Else_correct@@2  (=> (not $t14@@6) (=> (and (and (|$IsValid'u64'| $t13@@4) (= $t13@@4 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 1) _$t2@@7 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) 2) (div _$t2@@7 2) (+ 18446744073709551615 1)))))) (and (= $t13@@4 $t13@@4) (= (ControlFlow 0 240649) 240643))) inline$$Ge$0$anon0_correct@@1))))
(let ((anon23_Else_correct@@2  (=> (and (not $t10@@3) (|$IsValid'u64'| $t9@@11)) (=> (and (and (= $t9@@11 (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (= $t9@@11 $t9@@11)) (and (= $t12@@5 (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (= $t14@@6  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t12@@5) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t12@@5) 1) _$t2@@7 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t12@@5) 2) (div _$t2@@7 2) (+ 18446744073709551615 1)))) 18446744073709551615))))) (and (=> (= (ControlFlow 0 240575) 241225) anon24_Then_correct@@2) (=> (= (ControlFlow 0 240575) 240649) anon24_Else_correct@@2))))))
(let ((anon0$1_correct@@20  (=> (and (and (forall ((addr@@113 Int) ) (!  (=> (|$IsValid'address'| addr@@113) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_149233| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr@@113) (|Select__T@[Int]Bool_| (|domain#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |RecoveryAddresscvc5bpl.16643:22|
 :skolemid |355|
)) (forall ((addr@@114 Int) ) (!  (=> (|$IsValid'address'| addr@@114) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_149324| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr@@114) (|Select__T@[Int]Bool_| (|domain#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |RecoveryAddresscvc5bpl.16643:222|
 :skolemid |356|
))) (forall ((addr@@115 Int) ) (!  (=> (|$IsValid'address'| addr@@115) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_149415| |$1_Diem_Preburn'#0'_$memory|) addr@@115) (|Select__T@[Int]Bool_| (|domain#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |RecoveryAddresscvc5bpl.16643:423|
 :skolemid |357|
))) (=> (and (and (and (and (and (and (forall ((addr@@116 Int) ) (!  (=> (|$IsValid'address'| addr@@116) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_149642| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr@@116) (|Select__T@[Int]Bool_| (|domain#$Memory_143600| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |RecoveryAddresscvc5bpl.16647:22|
 :skolemid |358|
)) (forall ((addr@@117 Int) ) (!  (=> (|$IsValid'address'| addr@@117) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_149741| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr@@117) (|Select__T@[Int]Bool_| (|domain#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |RecoveryAddresscvc5bpl.16647:227|
 :skolemid |359|
))) (forall ((addr@@118 Int) ) (!  (=> (|$IsValid'address'| addr@@118) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_149840| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@118) (|Select__T@[Int]Bool_| (|domain#$Memory_143800| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |RecoveryAddresscvc5bpl.16647:433|
 :skolemid |360|
))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (and (forall ((child_addr@@6 Int) ) (!  (=> (|$IsValid'address'| child_addr@@6) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160971| $1_VASP_ChildVASP_$memory) child_addr@@6) (|Select__T@[Int]Bool_| (|domain#$Memory_161035| $1_VASP_ParentVASP_$memory) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) child_addr@@6)))))
 :qid |RecoveryAddresscvc5bpl.16655:20|
 :skolemid |361|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)))) (and (and (|$IsValid'address'| _$t0@@20) (|$IsValid'address'| _$t1@@14)) (and (|$IsValid'u64'| _$t2@@7) (forall (($a_0@@44 Int) ) (! (let (($rsc@@44 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) $a_0@@44)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| $rsc@@44) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $rsc@@44)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $rsc@@44) 10000000000))))
 :qid |RecoveryAddresscvc5bpl.16672:20|
 :skolemid |362|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) $a_0@@44))
))))) (and (and (and (forall (($a_0@@45 Int) ) (! (let (($rsc@@45 (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) $a_0@@45)))
(|$IsValid'$1_VASP_ChildVASP'| $rsc@@45))
 :qid |RecoveryAddresscvc5bpl.16676:20|
 :skolemid |363|
 :pattern ( (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_160971| $1_VASP_ChildVASP_$memory) $a_0@@45))
)) (forall (($a_0@@46 Int) ) (! (let (($rsc@@46 (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_161035| $1_VASP_ParentVASP_$memory) $a_0@@46)))
(|$IsValid'$1_VASP_ParentVASP'| $rsc@@46))
 :qid |RecoveryAddresscvc5bpl.16680:20|
 :skolemid |364|
 :pattern ( (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_161035| $1_VASP_ParentVASP_$memory) $a_0@@46))
))) (and (forall (($a_0@@47 Int) ) (! (let (($rsc@@47 (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) $a_0@@47)))
(|$IsValid'$1_DualAttestation_Limit'| $rsc@@47))
 :qid |RecoveryAddresscvc5bpl.16684:20|
 :skolemid |365|
 :pattern ( (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) $a_0@@47))
)) (= $t8@@10 (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (and (and (= _$t0@@20 _$t0@@20) (= _$t1@@14 _$t1@@14)) (and (= _$t2@@7 _$t2@@7) (= $t10@@3  (not (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))))))) (and (=> (= (ControlFlow 0 240515) 241251) anon23_Then_correct@@2) (=> (= (ControlFlow 0 240515) 240575) anon23_Else_correct@@2))))))
(let ((inline$$InitEventStore$0$anon0_correct@@20  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@22 T@$1_Event_EventHandle) ) (! (let ((stream@@21 (|Select__T@[$1_Event_EventHandle]Multiset_91859_| (|streams#$EventStore| $es) handle@@22)))
 (and (= (|l#Multiset_91859| stream@@21) 0) (forall ((v@@62 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_91859| stream@@21) v@@62) 0)
 :qid |RecoveryAddresscvc5bpl.134:13|
 :skolemid |2|
))))
 :qid |RecoveryAddresscvc5bpl.2787:13|
 :skolemid |79|
))) (= (ControlFlow 0 240148) 240515)) anon0$1_correct@@20)))
(let ((anon0_correct@@20  (=> (= (ControlFlow 0 320798) 240148) inline$$InitEventStore$0$anon0_correct@@20)))
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
 (=> (= (ControlFlow 0 0) 321923) (let ((anon12_Else_correct@@5  (=> (not $abort_flag@0@@5) (=> (and (= $t8@0@@6 (|$expiration_date#$1_DualAttestation_Credential| $t7@1@@2)) (= $t8@0@@6 $t8@0@@6)) (and (=> (= (ControlFlow 0 241772) (- 0 322247)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) _$t0@@21)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) _$t0@@21))) (and (=> (= (ControlFlow 0 241772) (- 0 322258)) (= $t8@0@@6 (|$expiration_date#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) _$t0@@21)))) (=> (= $t8@0@@6 (|$expiration_date#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) _$t0@@21))) (and (=> (= (ControlFlow 0 241772) (- 0 322271)) (forall ((addr1@@58 Int) ) (!  (=> (|$IsValid'address'| addr1@@58) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@58) (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@58)))
 :qid |RecoveryAddresscvc5bpl.17223:15|
 :skolemid |368|
))) (=> (forall ((addr1@@59 Int) ) (!  (=> (|$IsValid'address'| addr1@@59) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@59) (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@59)))
 :qid |RecoveryAddresscvc5bpl.17223:15|
 :skolemid |368|
)) (and (=> (= (ControlFlow 0 241772) (- 0 322296)) (forall ((addr1@@60 Int) ) (!  (=> (|$IsValid'address'| addr1@@60) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@60)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@60))))
 :qid |RecoveryAddresscvc5bpl.17228:15|
 :skolemid |369|
))) (=> (forall ((addr1@@61 Int) ) (!  (=> (|$IsValid'address'| addr1@@61) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@61)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@61))))
 :qid |RecoveryAddresscvc5bpl.17228:15|
 :skolemid |369|
)) (and (=> (= (ControlFlow 0 241772) (- 0 322325)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)))) (and (=> (= (ControlFlow 0 241772) (- 0 322342)) (forall ((addr1@@62 Int) ) (!  (=> (|$IsValid'address'| addr1@@62) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@62) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@62)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@62)))))
 :qid |RecoveryAddresscvc5bpl.17238:15|
 :skolemid |370|
))) (=> (forall ((addr1@@63 Int) ) (!  (=> (|$IsValid'address'| addr1@@63) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@63) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@63)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@63)))))
 :qid |RecoveryAddresscvc5bpl.17238:15|
 :skolemid |370|
)) (=> (= (ControlFlow 0 241772) (- 0 322378)) (forall ((addr1@@64 Int) ) (!  (=> (|$IsValid'address'| addr1@@64) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@64) (= (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@64)) (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@64)))))
 :qid |RecoveryAddresscvc5bpl.17243:15|
 :skolemid |371|
)))))))))))))))))))
(let ((L3_correct@@4  (and (=> (= (ControlFlow 0 241560) (- 0 322200)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) _$t0@@21))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) _$t0@@21)) (=> (= (ControlFlow 0 241560) (- 0 322206)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) _$t0@@21)) (= 5 $t6@0@@3)))))))
(let ((anon12_Then_correct@@5  (=> (and (and $abort_flag@0@@5 (= $abort_code@1@@5 $abort_code@1@@5)) (and (= $t6@0@@3 $abort_code@1@@5) (= (ControlFlow 0 241786) 241560))) L3_correct@@4)))
(let ((anon11_Then$1_correct@@3  (=> (= $t7@1@@2 $t7@@6) (=> (and (= $abort_flag@0@@5 true) (= $abort_code@1@@5 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 241838) 241786) anon12_Then_correct@@5) (=> (= (ControlFlow 0 241838) 241772) anon12_Else_correct@@5))))))
(let ((anon11_Then_correct@@9  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) _$t0@@21)) (= (ControlFlow 0 241836) 241838)) anon11_Then$1_correct@@3)))
(let ((anon11_Else_correct@@9  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) _$t0@@21) (=> (and (and (= $t7@0@@3 (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) _$t0@@21)) (= $t7@1@@2 $t7@0@@3)) (and (= $abort_flag@0@@5 false) (= $abort_code@1@@5 $abort_code@0@@5))) (and (=> (= (ControlFlow 0 241578) 241786) anon12_Then_correct@@5) (=> (= (ControlFlow 0 241578) 241772) anon12_Else_correct@@5))))))
(let ((anon10_Then_correct@@8  (=> $t3@0@@6 (and (=> (= (ControlFlow 0 241564) 241836) anon11_Then_correct@@9) (=> (= (ControlFlow 0 241564) 241578) anon11_Else_correct@@9)))))
(let ((anon10_Else_correct@@8  (=> (and (and (not $t3@0@@6) (= $t5@@11 $t5@@11)) (and (= $t6@0@@3 $t5@@11) (= (ControlFlow 0 241528) 241560))) L3_correct@@4)))
(let ((anon0$1_correct@@21  (=> (and (forall ((addr1@@65 Int) ) (!  (=> (|$IsValid'address'| addr1@@65) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@65) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@65) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@65)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@65) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@65)) 2)))))
 :qid |RecoveryAddresscvc5bpl.17120:20|
 :skolemid |366|
)) (|$IsValid'address'| _$t0@@21)) (=> (and (and (and (forall (($a_0@@48 Int) ) (! (let (($rsc@@48 (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) $a_0@@48)))
(|$IsValid'$1_DualAttestation_Credential'| $rsc@@48))
 :qid |RecoveryAddresscvc5bpl.17127:20|
 :skolemid |367|
 :pattern ( (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) $a_0@@48))
)) (= _$t0@@21 _$t0@@21)) (and (= $t3@0@@6 (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) _$t0@@21)) (|$IsValid'u64'| 0))) (and (and (|$IsValid'u64'| $t5@@11) (= $t5@@11 5)) (and (= $t5@@11 $t5@@11) (= $t3@0@@6 $t3@0@@6)))) (and (=> (= (ControlFlow 0 241512) 241564) anon10_Then_correct@@8) (=> (= (ControlFlow 0 241512) 241528) anon10_Else_correct@@8))))))
(let ((inline$$InitEventStore$0$anon0_correct@@21  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@23 T@$1_Event_EventHandle) ) (! (let ((stream@@22 (|Select__T@[$1_Event_EventHandle]Multiset_91859_| (|streams#$EventStore| $es) handle@@23)))
 (and (= (|l#Multiset_91859| stream@@22) 0) (forall ((v@@63 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_91859| stream@@22) v@@63) 0)
 :qid |RecoveryAddresscvc5bpl.134:13|
 :skolemid |2|
))))
 :qid |RecoveryAddresscvc5bpl.2787:13|
 :skolemid |79|
))) (= (ControlFlow 0 241391) 241512)) anon0$1_correct@@21)))
(let ((anon0_correct@@21  (=> (= (ControlFlow 0 321923) 241391) inline$$InitEventStore$0$anon0_correct@@21)))
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
 (=> (= (ControlFlow 0 0) 322421) (let ((anon12_Else_correct@@6  (=> (not $abort_flag@0@@6) (=> (and (= $t9@0@@0 (|$micro_xdx_limit#$1_DualAttestation_Limit| $t8@1)) (= $t9@0@@0 $t9@0@@0)) (and (=> (= (ControlFlow 0 242279) (- 0 322725)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (and (=> (= (ControlFlow 0 242279) (- 0 322735)) (= $t9@0@@0 (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)))) (=> (= $t9@0@@0 (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (and (=> (= (ControlFlow 0 242279) (- 0 322745)) (forall ((addr1@@66 Int) ) (!  (=> (|$IsValid'address'| addr1@@66) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@66) (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@66)))
 :qid |RecoveryAddresscvc5bpl.17400:15|
 :skolemid |373|
))) (=> (forall ((addr1@@67 Int) ) (!  (=> (|$IsValid'address'| addr1@@67) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@67) (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@67)))
 :qid |RecoveryAddresscvc5bpl.17400:15|
 :skolemid |373|
)) (and (=> (= (ControlFlow 0 242279) (- 0 322770)) (forall ((addr1@@68 Int) ) (!  (=> (|$IsValid'address'| addr1@@68) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@68)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@68))))
 :qid |RecoveryAddresscvc5bpl.17405:15|
 :skolemid |374|
))) (=> (forall ((addr1@@69 Int) ) (!  (=> (|$IsValid'address'| addr1@@69) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@69)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@69))))
 :qid |RecoveryAddresscvc5bpl.17405:15|
 :skolemid |374|
)) (and (=> (= (ControlFlow 0 242279) (- 0 322799)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)))) (and (=> (= (ControlFlow 0 242279) (- 0 322816)) (forall ((addr1@@70 Int) ) (!  (=> (|$IsValid'address'| addr1@@70) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@70) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@70)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@70)))))
 :qid |RecoveryAddresscvc5bpl.17415:15|
 :skolemid |375|
))) (=> (forall ((addr1@@71 Int) ) (!  (=> (|$IsValid'address'| addr1@@71) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@71) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@71)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@71)))))
 :qid |RecoveryAddresscvc5bpl.17415:15|
 :skolemid |375|
)) (=> (= (ControlFlow 0 242279) (- 0 322852)) (forall ((addr1@@72 Int) ) (!  (=> (|$IsValid'address'| addr1@@72) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@72) (= (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@72)) (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@72)))))
 :qid |RecoveryAddresscvc5bpl.17420:15|
 :skolemid |376|
)))))))))))))))))))
(let ((L3_correct@@5  (and (=> (= (ControlFlow 0 242067) (- 0 322680)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)) (=> (= (ControlFlow 0 242067) (- 0 322685)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)) (= 5 $t6@0@@4)))))))
(let ((anon12_Then_correct@@6  (=> (and (and $abort_flag@0@@6 (= $abort_code@1@@6 $abort_code@1@@6)) (and (= $t6@0@@4 $abort_code@1@@6) (= (ControlFlow 0 242293) 242067))) L3_correct@@5)))
(let ((anon11_Then$1_correct@@4  (=> (= $t8@1 $t8@@11) (=> (and (= $abort_flag@0@@6 true) (= $abort_code@1@@6 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 242345) 242293) anon12_Then_correct@@6) (=> (= (ControlFlow 0 242345) 242279) anon12_Else_correct@@6))))))
(let ((anon11_Then_correct@@10  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)) (= (ControlFlow 0 242343) 242345)) anon11_Then$1_correct@@4)))
(let ((anon11_Else_correct@@10  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816) (=> (and (and (= $t8@0@@7 (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)) (= $t8@1 $t8@0@@7)) (and (= $abort_flag@0@@6 false) (= $abort_code@1@@6 $abort_code@0@@6))) (and (=> (= (ControlFlow 0 242091) 242293) anon12_Then_correct@@6) (=> (= (ControlFlow 0 242091) 242279) anon12_Else_correct@@6))))))
(let ((anon10_Then_correct@@9  (=> (and $t3@0@@7 (|$IsValid'address'| 173345816)) (and (=> (= (ControlFlow 0 242077) 242343) anon11_Then_correct@@10) (=> (= (ControlFlow 0 242077) 242091) anon11_Else_correct@@10)))))
(let ((anon10_Else_correct@@9  (=> (and (and (not $t3@0@@7) (= $t5@@12 $t5@@12)) (and (= $t6@0@@4 $t5@@12) (= (ControlFlow 0 242039) 242067))) L3_correct@@5)))
(let ((anon0$1_correct@@22  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)) (=> (and (and (and (forall (($a_0@@49 Int) ) (! (let (($rsc@@49 (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) $a_0@@49)))
(|$IsValid'$1_DualAttestation_Limit'| $rsc@@49))
 :qid |RecoveryAddresscvc5bpl.17299:20|
 :skolemid |372|
 :pattern ( (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) $a_0@@49))
)) (|$IsValid'address'| 173345816)) (and (= $t3@0@@7 (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)) (|$IsValid'u64'| 1))) (and (and (|$IsValid'u64'| $t5@@12) (= $t5@@12 5)) (and (= $t5@@12 $t5@@12) (= $t3@0@@7 $t3@0@@7)))) (and (=> (= (ControlFlow 0 242023) 242077) anon10_Then_correct@@9) (=> (= (ControlFlow 0 242023) 242039) anon10_Else_correct@@9))))))
(let ((inline$$InitEventStore$0$anon0_correct@@22  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@24 T@$1_Event_EventHandle) ) (! (let ((stream@@23 (|Select__T@[$1_Event_EventHandle]Multiset_91859_| (|streams#$EventStore| $es) handle@@24)))
 (and (= (|l#Multiset_91859| stream@@23) 0) (forall ((v@@64 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_91859| stream@@23) v@@64) 0)
 :qid |RecoveryAddresscvc5bpl.134:13|
 :skolemid |2|
))))
 :qid |RecoveryAddresscvc5bpl.2787:13|
 :skolemid |79|
))) (= (ControlFlow 0 241927) 242023)) anon0$1_correct@@22)))
(let ((anon0_correct@@22  (=> (= (ControlFlow 0 322421) 241927) inline$$InitEventStore$0$anon0_correct@@22)))
anon0_correct@@22))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@7 () Bool)
(declare-fun $1_DualAttestation_Credential_$memory@1 () T@$Memory_126892)
(declare-fun $t5@@13 () Int)
(declare-fun $t6@@10 () Int)
(declare-fun $t7@@7 () Int)
(declare-fun _$t1@@15 () T@$signer)
(declare-fun _$t0@@22 () T@$signer)
(declare-fun $t8@@12 () Int)
(declare-fun $t9@@12 () Int)
(declare-fun $t13@0 () Int)
(declare-fun $abort_code@1@@7 () Int)
(declare-fun $1_DualAttestation_Credential_$memory@0 () T@$Memory_126892)
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
(declare-fun |$1_Diem_MintCapability'$1_XUS_XUS'_$memory| () T@$Memory_148973)
(declare-fun |$1_Diem_MintCapability'$1_XDX_XDX'_$memory| () T@$Memory_149060)
(declare-fun |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory| () T@$Memory_144253)
(declare-fun |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory| () T@$Memory_144340)
(push 1)
(set-info :boogie-vc-id $1_DualAttestation_publish_credential$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 322897) (let ((anon30_Else_correct@@4  (=> (not $abort_flag@0@@7) (and (=> (= (ControlFlow 0 243872) (- 0 324244)) (forall ((addr1@@73 Int) ) (!  (=> (|$IsValid'address'| addr1@@73) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory@1) addr1@@73) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@73) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@73)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@73) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@73)) 2)))))
 :qid |RecoveryAddresscvc5bpl.17776:15|
 :skolemid |386|
))) (=> (forall ((addr1@@74 Int) ) (!  (=> (|$IsValid'address'| addr1@@74) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory@1) addr1@@74) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@74) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@74)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@74) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@74)) 2)))))
 :qid |RecoveryAddresscvc5bpl.17776:15|
 :skolemid |386|
)) (and (=> (= (ControlFlow 0 243872) (- 0 324280)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t5@@13)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t5@@13))) (and (=> (= (ControlFlow 0 243872) (- 0 324292)) (not (and (not (= $t6@@10 5)) (not (= $t6@@10 2))))) (=> (not (and (not (= $t6@@10 5)) (not (= $t6@@10 2)))) (and (=> (= (ControlFlow 0 243872) (- 0 324315)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t7@@7)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t7@@7))) (and (=> (= (ControlFlow 0 243872) (- 0 324327)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t7@@7)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t7@@7)) 1))) (and (=> (= (ControlFlow 0 243872) (- 0 324345)) (not (not (= (|$addr#$signer| _$t1@@15) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t1@@15) 186537453))) (and (=> (= (ControlFlow 0 243872) (- 0 324359)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) (|$addr#$signer| _$t0@@22)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) (|$addr#$signer| _$t0@@22))) (and (=> (= (ControlFlow 0 243872) (- 0 324370)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t8@@12)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t8@@12))) (and (=> (= (ControlFlow 0 243872) (- 0 324382)) (not (and (not (= $t9@@12 5)) (not (= $t9@@12 2))))) (=> (not (and (not (= $t9@@12 5)) (not (= $t9@@12 2)))) (and (=> (= (ControlFlow 0 243872) (- 0 324405)) (forall ((addr1@@75 Int) ) (!  (=> (|$IsValid'address'| addr1@@75) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@75) (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory@1) addr1@@75)))
 :qid |RecoveryAddresscvc5bpl.17825:15|
 :skolemid |387|
))) (=> (forall ((addr1@@76 Int) ) (!  (=> (|$IsValid'address'| addr1@@76) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@76) (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory@1) addr1@@76)))
 :qid |RecoveryAddresscvc5bpl.17825:15|
 :skolemid |387|
)) (and (=> (= (ControlFlow 0 243872) (- 0 324429)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)))) (and (=> (= (ControlFlow 0 243872) (- 0 324446)) (forall ((addr1@@77 Int) ) (!  (=> (|$IsValid'address'| addr1@@77) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@77) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory@1) addr1@@77)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@77)))))
 :qid |RecoveryAddresscvc5bpl.17835:15|
 :skolemid |388|
))) (=> (forall ((addr1@@78 Int) ) (!  (=> (|$IsValid'address'| addr1@@78) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@78) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory@1) addr1@@78)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@78)))))
 :qid |RecoveryAddresscvc5bpl.17835:15|
 :skolemid |388|
)) (=> (= (ControlFlow 0 243872) (- 0 324481)) (forall ((addr1@@79 Int) ) (!  (=> (|$IsValid'address'| addr1@@79) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@79) (= (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory@1) addr1@@79)) (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@79)))))
 :qid |RecoveryAddresscvc5bpl.17840:15|
 :skolemid |389|
))))))))))))))))))))))))))))))
(let ((anon28_Then_correct@@4 true))
(let ((anon27_Then_correct@@4 true))
(let ((anon26_Then_correct@@4 true))
(let ((anon25_Then_correct@@3 true))
(let ((L3_correct@@6  (and (=> (= (ControlFlow 0 243302) (- 0 323979)) (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t5@@13)) (and (not (= $t6@@10 5)) (not (= $t6@@10 2)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t7@@7))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t7@@7)) 1))) (not (= (|$addr#$signer| _$t1@@15) 186537453))) (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) (|$addr#$signer| _$t0@@22))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t8@@12))) (and (not (= $t9@@12 5)) (not (= $t9@@12 2))))) (=> (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t5@@13)) (and (not (= $t6@@10 5)) (not (= $t6@@10 2)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t7@@7))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t7@@7)) 1))) (not (= (|$addr#$signer| _$t1@@15) 186537453))) (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) (|$addr#$signer| _$t0@@22))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t8@@12))) (and (not (= $t9@@12 5)) (not (= $t9@@12 2)))) (=> (= (ControlFlow 0 243302) (- 0 324078)) (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t5@@13)) (= 5 $t13@0)) (and (and (not (= $t6@@10 5)) (not (= $t6@@10 2))) (= 3 $t13@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t7@@7)) (= 5 $t13@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t7@@7)) 1)) (= 3 $t13@0))) (and (not (= (|$addr#$signer| _$t1@@15) 186537453)) (= 2 $t13@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) (|$addr#$signer| _$t0@@22)) (= 6 $t13@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t8@@12)) (= 5 $t13@0))) (and (and (not (= $t9@@12 5)) (not (= $t9@@12 2))) (= 3 $t13@0))))))))
(let ((anon30_Then_correct@@4  (=> (and (and $abort_flag@0@@7 (= $abort_code@1@@7 $abort_code@1@@7)) (and (= $t13@0 $abort_code@1@@7) (= (ControlFlow 0 243886) 243302))) L3_correct@@6)))
(let ((anon29_Then$1_correct  (=> (= $1_DualAttestation_Credential_$memory@1 $1_DualAttestation_Credential_$memory) (=> (and (= $abort_flag@0@@7 true) (= $abort_code@1@@7 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 243938) 243886) anon30_Then_correct@@4) (=> (= (ControlFlow 0 243938) 243872) anon30_Else_correct@@4))))))
(let ((anon29_Then_correct@@4  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) (|$addr#$signer| _$t0@@22)) (= (ControlFlow 0 243936) 243938)) anon29_Then$1_correct)))
(let ((anon29_Else_correct@@4  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) (|$addr#$signer| _$t0@@22))) (=> (and (and (= $1_DualAttestation_Credential_$memory@0 ($Memory_126892 (|Store__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) (|$addr#$signer| _$t0@@22) true) (|Store__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (|$addr#$signer| _$t0@@22) $t26@0))) (= $1_DualAttestation_Credential_$memory@1 $1_DualAttestation_Credential_$memory@0)) (and (= $abort_flag@0@@7 false) (= $abort_code@1@@7 $abort_code@0@@7))) (and (=> (= (ControlFlow 0 243588) 243886) anon30_Then_correct@@4) (=> (= (ControlFlow 0 243588) 243872) anon30_Else_correct@@4))))))
(let ((anon28_Else_correct@@4  (=> (and (not false) (= $t26@0 ($1_DualAttestation_Credential _$t2@@8 |inline$$1_Vector_empty'u8'$0$v@1| |inline$$1_Vector_empty'u8'$1$v@1| 18446744073709551615 |inline$$1_Event_new_event_handle'$1_DualAttestation_ComplianceKeyRotationEvent'$0$res@0| |inline$$1_Event_new_event_handle'$1_DualAttestation_BaseUrlRotationEvent'$0$res@0|))) (and (=> (= (ControlFlow 0 243566) 243936) anon29_Then_correct@@4) (=> (= (ControlFlow 0 243566) 243588) anon29_Else_correct@@4)))))
(let ((|inline$$1_Event_new_event_handle'$1_DualAttestation_BaseUrlRotationEvent'$0$anon0_correct|  (=> (and (= (|Select__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles@0 |inline$$1_Event_new_event_handle'$1_DualAttestation_BaseUrlRotationEvent'$0$res@0|) false) (= $1_Event_EventHandles@1 (|Store__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles@0 |inline$$1_Event_new_event_handle'$1_DualAttestation_BaseUrlRotationEvent'$0$res@0| true))) (and (=> (= (ControlFlow 0 243536) 243952) anon28_Then_correct@@4) (=> (= (ControlFlow 0 243536) 243566) anon28_Else_correct@@4)))))
(let ((anon27_Else_correct@@4  (=> (and (not false) (= (ControlFlow 0 243542) 243536)) |inline$$1_Event_new_event_handle'$1_DualAttestation_BaseUrlRotationEvent'$0$anon0_correct|)))
(let ((|inline$$1_Event_new_event_handle'$1_DualAttestation_ComplianceKeyRotationEvent'$0$anon0_correct|  (=> (and (= (|Select__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles |inline$$1_Event_new_event_handle'$1_DualAttestation_ComplianceKeyRotationEvent'$0$res@0|) false) (= $1_Event_EventHandles@0 (|Store__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles |inline$$1_Event_new_event_handle'$1_DualAttestation_ComplianceKeyRotationEvent'$0$res@0| true))) (and (=> (= (ControlFlow 0 243454) 243966) anon27_Then_correct@@4) (=> (= (ControlFlow 0 243454) 243542) anon27_Else_correct@@4)))))
(let ((anon26_Else_correct@@4  (=> (not false) (=> (and (|$IsValid'u64'| 18446744073709551615) (= (ControlFlow 0 243460) 243454)) |inline$$1_Event_new_event_handle'$1_DualAttestation_ComplianceKeyRotationEvent'$0$anon0_correct|))))
(let ((|inline$$1_Vector_empty'u8'$1$anon0_correct|  (=> (= |inline$$1_Vector_empty'u8'$1$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 243364) 243980) anon26_Then_correct@@4) (=> (= (ControlFlow 0 243364) 243460) anon26_Else_correct@@4)))))
(let ((anon25_Else_correct@@3  (=> (and (not false) (= (ControlFlow 0 243370) 243364)) |inline$$1_Vector_empty'u8'$1$anon0_correct|)))
(let ((|inline$$1_Vector_empty'u8'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u8'$0$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 243328) 243994) anon25_Then_correct@@3) (=> (= (ControlFlow 0 243328) 243370) anon25_Else_correct@@3)))))
(let ((anon24_Then_correct@@3  (=> (and inline$$Not$0$dst@1@@8 (= (ControlFlow 0 243334) 243328)) |inline$$1_Vector_empty'u8'$0$anon0_correct|)))
(let ((anon24_Else_correct@@3  (=> (and (and (not inline$$Not$0$dst@1@@8) (= $t20@@0 $t20@@0)) (and (= $t13@0 $t20@@0) (= (ControlFlow 0 243018) 243302))) L3_correct@@6)))
(let ((anon23_Else$1_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| $t20@@0) (= $t20@@0 6)) (and (= $t20@@0 $t20@@0) (= inline$$Not$0$dst@1@@8 inline$$Not$0$dst@1@@8))) (and (=> (= (ControlFlow 0 243002) 243334) anon24_Then_correct@@3) (=> (= (ControlFlow 0 243002) 243018) anon24_Else_correct@@3))))))
(let ((inline$$Not$0$anon0_correct@@8  (=> (and (= inline$$Not$0$dst@1@@8  (not $t17@0@@1)) (= (ControlFlow 0 242962) 243002)) anon23_Else$1_correct)))
(let ((anon23_Else_correct@@3  (=> (not $t15) (=> (and (and (|$IsValid'address'| $t16) (= $t16 (|$addr#$signer| _$t0@@22))) (and (= $t17@0@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) $t16)) (= (ControlFlow 0 242968) 242962))) inline$$Not$0$anon0_correct@@8))))
(let ((anon23_Then_correct@@3  (=> $t15 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t14@@7)) (= 5 $t13@@5)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t14@@7)) 1)) (= 3 $t13@@5))) (and (not (= (|$addr#$signer| _$t1@@15) 186537453)) (= 2 $t13@@5))) (= $t13@@5 $t13@@5)) (and (= $t13@0 $t13@@5) (= (ControlFlow 0 244066) 243302))) L3_correct@@6))))
(let ((anon22_Else_correct@@0  (=> (not $t12@@6) (=> (and (= $t14@@7 (|$addr#$signer| _$t1@@15)) (= $t15  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t14@@7)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t14@@7)) 1))) (not (= (|$addr#$signer| _$t1@@15) 186537453))))) (and (=> (= (ControlFlow 0 242906) 244066) anon23_Then_correct@@3) (=> (= (ControlFlow 0 242906) 242968) anon23_Else_correct@@3))))))
(let ((anon22_Then_correct@@0  (=> $t12@@6 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t10@@4)) (= 5 $t13@@5)) (and (and (not (= $t11@@6 5)) (not (= $t11@@6 2))) (= 3 $t13@@5))) (= $t13@@5 $t13@@5)) (and (= $t13@0 $t13@@5) (= (ControlFlow 0 244122) 243302))) L3_correct@@6))))
(let ((anon0$1_correct@@23  (=> (and (and (and (forall ((mint_cap_owner Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_148973| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) mint_cap_owner) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) mint_cap_owner)) 1))))
 :qid |RecoveryAddresscvc5bpl.17495:21|
 :skolemid |377|
)) (forall ((mint_cap_owner@@0 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_149060| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner@@0) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) mint_cap_owner@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) mint_cap_owner@@0)) 1))))
 :qid |RecoveryAddresscvc5bpl.17495:268|
 :skolemid |378|
))) (and (forall ((addr1@@80 Int) ) (!  (=> (|$IsValid'address'| addr1@@80) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_144253| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr1@@80) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@80) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@80)) 1))))
 :qid |RecoveryAddresscvc5bpl.17499:21|
 :skolemid |379|
)) (forall ((addr1@@81 Int) ) (!  (=> (|$IsValid'address'| addr1@@81) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_144340| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) addr1@@81) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@81) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@81)) 1))))
 :qid |RecoveryAddresscvc5bpl.17499:231|
 :skolemid |380|
)))) (and (and (forall ((addr1@@82 Int) ) (!  (=> (|$IsValid'address'| addr1@@82) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_149642| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr1@@82) (|Select__T@[Int]Bool_| (|domain#$Memory_149233| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr1@@82)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@82) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@82)) 2))))
 :qid |RecoveryAddresscvc5bpl.17503:21|
 :skolemid |381|
)) (forall ((addr1@@83 Int) ) (!  (=> (|$IsValid'address'| addr1@@83) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_149741| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr1@@83) (|Select__T@[Int]Bool_| (|domain#$Memory_149324| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr1@@83)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@83) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@83)) 2))))
 :qid |RecoveryAddresscvc5bpl.17503:292|
 :skolemid |382|
))) (forall ((addr1@@84 Int) ) (!  (=> (|$IsValid'address'| addr1@@84) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@84) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@84) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@84)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@84) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@84)) 2)))))
 :qid |RecoveryAddresscvc5bpl.17511:20|
 :skolemid |383|
)))) (=> (and (and (and (and (|$IsValid'address'| (|$addr#$signer| _$t0@@22)) (|$IsValid'address'| (|$addr#$signer| _$t1@@15))) (and (|$IsValid'vec'u8''| _$t2@@8) (forall (($a_0@@50 Int) ) (! (let (($rsc@@50 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $a_0@@50)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@50))
 :qid |RecoveryAddresscvc5bpl.17523:20|
 :skolemid |384|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $a_0@@50))
)))) (and (and (forall (($a_0@@51 Int) ) (! (let (($rsc@@51 (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) $a_0@@51)))
(|$IsValid'$1_DualAttestation_Credential'| $rsc@@51))
 :qid |RecoveryAddresscvc5bpl.17527:20|
 :skolemid |385|
 :pattern ( (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) $a_0@@51))
)) (= $t5@@13 (|$addr#$signer| _$t0@@22))) (and (= $t6@@10 (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t5@@13))) (= $t7@@7 (|$addr#$signer| _$t1@@15))))) (and (and (and (= $t8@@12 (|$addr#$signer| _$t0@@22)) (= $t9@@12 (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t8@@12)))) (and (= _$t0@@22 _$t0@@22) (= _$t1@@15 _$t1@@15))) (and (and (= _$t2@@8 _$t2@@8) (= $t10@@4 (|$addr#$signer| _$t0@@22))) (and (= $t11@@6 (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t10@@4))) (= $t12@@6  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t10@@4)) (and (not (= $t11@@6 5)) (not (= $t11@@6 2))))))))) (and (=> (= (ControlFlow 0 242846) 244122) anon22_Then_correct@@0) (=> (= (ControlFlow 0 242846) 242906) anon22_Else_correct@@0))))))
(let ((inline$$InitEventStore$0$anon0_correct@@23  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@25 T@$1_Event_EventHandle) ) (! (let ((stream@@24 (|Select__T@[$1_Event_EventHandle]Multiset_91859_| (|streams#$EventStore| $es) handle@@25)))
 (and (= (|l#Multiset_91859| stream@@24) 0) (forall ((v@@65 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_91859| stream@@24) v@@65) 0)
 :qid |RecoveryAddresscvc5bpl.134:13|
 :skolemid |2|
))))
 :qid |RecoveryAddresscvc5bpl.2787:13|
 :skolemid |79|
))) (= (ControlFlow 0 242439) 242846)) anon0$1_correct@@23)))
(let ((anon0_correct@@23  (=> (= (ControlFlow 0 322897) 242439) inline$$InitEventStore$0$anon0_correct@@23)))
anon0_correct@@23))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@8 () Bool)
(declare-fun $1_DualAttestation_Credential_$memory@0@@0 () T@$Memory_126892)
(declare-fun $t16@2 () T@$Mutation_187670)
(declare-fun $t6@@11 () Int)
(declare-fun $t7@@8 () Int)
(declare-fun _$t1@@16 () (Seq Int))
(declare-fun $es@0 () T@$EventStore)
(declare-fun $t9@@13 () T@$1_Event_EventHandle)
(declare-fun $t10@@5 () T@$1_DualAttestation_BaseUrlRotationEvent)
(declare-fun |Store__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep Int) |T@[$EventRep]Int|)
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?x2 Int)) (! (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?y1 T@$EventRep) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$EventRep]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[$1_Event_EventHandle]Multiset_91859_| (|T@[$1_Event_EventHandle]Multiset_91859| T@$1_Event_EventHandle T@Multiset_91859) |T@[$1_Event_EventHandle]Multiset_91859|)
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_91859|) ( ?x1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_91859)) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_91859_| (|Store__T@[$1_Event_EventHandle]Multiset_91859_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_91859|) ( ?x1 T@$1_Event_EventHandle) ( ?y1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_91859)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$1_Event_EventHandle]Multiset_91859_| (|Store__T@[$1_Event_EventHandle]Multiset_91859_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$1_Event_EventHandle]Multiset_91859_| ?x0 ?y1))) :weight 0)))
(declare-fun $t15@0@@0 () Int)
(declare-fun $abort_code@1@@8 () Int)
(declare-fun |inline$$1_Event_emit_event'$1_DualAttestation_BaseUrlRotationEvent'$0$handle@1| () T@$1_Event_EventHandle)
(declare-fun $t18@0@@3 () T@$Mutation_116783)
(declare-fun $t21@0 () T@$1_DualAttestation_BaseUrlRotationEvent)
(declare-fun $t20@@1 () Bool)
(declare-fun $t19 () Int)
(declare-fun $t15@@0 () Int)
(declare-fun |$temp_0'$1_DualAttestation_Credential'@0| () T@$1_DualAttestation_Credential)
(declare-fun $t16@1 () T@$Mutation_187670)
(declare-fun $t17@0@@2 () T@$Mutation_111899)
(declare-fun $t17@1 () T@$Mutation_111899)
(declare-fun $t16@@0 () T@$Mutation_187670)
(declare-fun $t11@@7 () Int)
(declare-fun $t16@0 () T@$Mutation_187670)
(declare-fun $abort_code@0@@8 () Int)
(declare-fun $t12@0 () Bool)
(declare-fun $t14@@8 () Int)
(declare-fun _$t0@@23 () T@$signer)
(declare-fun $t8@@13 () Int)
(declare-fun $t5@@14 () T@$Mutation_187670)
(declare-fun $t17@@0 () T@$Mutation_111899)
(declare-fun $t18 () T@$Mutation_116783)
(push 1)
(set-info :boogie-vc-id $1_DualAttestation_rotate_base_url$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 324526) (let ((anon19_Else_correct  (=> (and (not $abort_flag@0@@8) (= $1_DualAttestation_Credential_$memory@0@@0 ($Memory_126892 (|Store__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) (|a#$Global| (|l#$Mutation_187670| $t16@2)) true) (|Store__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (|a#$Global| (|l#$Mutation_187670| $t16@2)) (|v#$Mutation_187670| $t16@2))))) (and (=> (= (ControlFlow 0 245265) (- 0 325336)) (forall ((addr1@@85 Int) ) (!  (=> (|$IsValid'address'| addr1@@85) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory@0@@0) addr1@@85) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@85) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@85)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@85) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@85)) 2)))))
 :qid |RecoveryAddresscvc5bpl.18146:15|
 :skolemid |393|
))) (=> (forall ((addr1@@86 Int) ) (!  (=> (|$IsValid'address'| addr1@@86) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory@0@@0) addr1@@86) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@86) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@86)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@86) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@86)) 2)))))
 :qid |RecoveryAddresscvc5bpl.18146:15|
 :skolemid |393|
)) (and (=> (= (ControlFlow 0 245265) (- 0 325372)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) $t6@@11)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) $t6@@11))) (and (=> (= (ControlFlow 0 245265) (- 0 325384)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 245265) (- 0 325394)) (= (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory@0@@0) $t7@@8)) _$t1@@16)) (=> (= (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory@0@@0) $t7@@8)) _$t1@@16) (and (=> (= (ControlFlow 0 245265) (- 0 325407)) (forall ((addr1@@87 Int) ) (!  (=> (|$IsValid'address'| addr1@@87) (=> (not (= addr1@@87 $t7@@8)) (= (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory@0@@0) addr1@@87)) (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@87)))))
 :qid |RecoveryAddresscvc5bpl.18170:15|
 :skolemid |394|
))) (=> (forall ((addr1@@88 Int) ) (!  (=> (|$IsValid'address'| addr1@@88) (=> (not (= addr1@@88 $t7@@8)) (= (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory@0@@0) addr1@@88)) (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@88)))))
 :qid |RecoveryAddresscvc5bpl.18170:15|
 :skolemid |394|
)) (and (=> (= (ControlFlow 0 245265) (- 0 325445)) (forall ((addr1@@89 Int) ) (!  (=> (|$IsValid'address'| addr1@@89) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@89) (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory@0@@0) addr1@@89)))
 :qid |RecoveryAddresscvc5bpl.18175:15|
 :skolemid |395|
))) (=> (forall ((addr1@@90 Int) ) (!  (=> (|$IsValid'address'| addr1@@90) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@90) (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory@0@@0) addr1@@90)))
 :qid |RecoveryAddresscvc5bpl.18175:15|
 :skolemid |395|
)) (and (=> (= (ControlFlow 0 245265) (- 0 325469)) (forall ((addr1@@91 Int) ) (!  (=> (|$IsValid'address'| addr1@@91) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@91)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory@0@@0) addr1@@91))))
 :qid |RecoveryAddresscvc5bpl.18180:15|
 :skolemid |396|
))) (=> (forall ((addr1@@92 Int) ) (!  (=> (|$IsValid'address'| addr1@@92) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@92)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory@0@@0) addr1@@92))))
 :qid |RecoveryAddresscvc5bpl.18180:15|
 :skolemid |396|
)) (and (=> (= (ControlFlow 0 245265) (- 0 325497)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)))) (and (=> (= (ControlFlow 0 245265) (- 0 325514)) (forall ((addr1@@93 Int) ) (!  (=> (|$IsValid'address'| addr1@@93) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@93) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory@0@@0) addr1@@93)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@93)))))
 :qid |RecoveryAddresscvc5bpl.18190:15|
 :skolemid |397|
))) (=> (forall ((addr1@@94 Int) ) (!  (=> (|$IsValid'address'| addr1@@94) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@94) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory@0@@0) addr1@@94)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@94)))))
 :qid |RecoveryAddresscvc5bpl.18190:15|
 :skolemid |397|
)) (and (=> (= (ControlFlow 0 245265) (- 0 325549)) (let ((actual ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected (let ((stream@@25 (|Select__T@[$1_Event_EventHandle]Multiset_91859_| (|streams#$EventStore| $EmptyEventStore) $t9@@13)))
(let ((stream_new (let ((len (|l#Multiset_91859| stream@@25)))
(let ((cnt (|Select__T@[$EventRep]Int_| (|v#Multiset_91859| stream@@25) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| $t10@@5))))
(Multiset_91859 (|Store__T@[$EventRep]Int_| (|v#Multiset_91859| stream@@25) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| $t10@@5) (+ cnt 1)) (+ len 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_91859_| (|streams#$EventStore| $EmptyEventStore) $t9@@13 stream_new))))))
 (and (<= (|counter#$EventStore| expected) (|counter#$EventStore| actual)) (forall ((handle@@26 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_91859| (|Select__T@[$1_Event_EventHandle]Multiset_91859_| (|streams#$EventStore| expected) handle@@26)) (|l#Multiset_91859| (|Select__T@[$1_Event_EventHandle]Multiset_91859_| (|streams#$EventStore| actual) handle@@26))) (forall ((v@@66 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_91859| (|Select__T@[$1_Event_EventHandle]Multiset_91859_| (|streams#$EventStore| expected) handle@@26)) v@@66) (|Select__T@[$EventRep]Int_| (|v#Multiset_91859| (|Select__T@[$1_Event_EventHandle]Multiset_91859_| (|streams#$EventStore| actual) handle@@26)) v@@66))
 :qid |RecoveryAddresscvc5bpl.139:13|
 :skolemid |3|
)))
 :qid |RecoveryAddresscvc5bpl.2803:13|
 :skolemid |80|
)))))) (=> (let ((actual@@0 ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected@@0 (let ((stream@@26 (|Select__T@[$1_Event_EventHandle]Multiset_91859_| (|streams#$EventStore| $EmptyEventStore) $t9@@13)))
(let ((stream_new@@0 (let ((len@@0 (|l#Multiset_91859| stream@@26)))
(let ((cnt@@0 (|Select__T@[$EventRep]Int_| (|v#Multiset_91859| stream@@26) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| $t10@@5))))
(Multiset_91859 (|Store__T@[$EventRep]Int_| (|v#Multiset_91859| stream@@26) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| $t10@@5) (+ cnt@@0 1)) (+ len@@0 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_91859_| (|streams#$EventStore| $EmptyEventStore) $t9@@13 stream_new@@0))))))
 (and (<= (|counter#$EventStore| expected@@0) (|counter#$EventStore| actual@@0)) (forall ((handle@@27 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_91859| (|Select__T@[$1_Event_EventHandle]Multiset_91859_| (|streams#$EventStore| expected@@0) handle@@27)) (|l#Multiset_91859| (|Select__T@[$1_Event_EventHandle]Multiset_91859_| (|streams#$EventStore| actual@@0) handle@@27))) (forall ((v@@67 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_91859| (|Select__T@[$1_Event_EventHandle]Multiset_91859_| (|streams#$EventStore| expected@@0) handle@@27)) v@@67) (|Select__T@[$EventRep]Int_| (|v#Multiset_91859| (|Select__T@[$1_Event_EventHandle]Multiset_91859_| (|streams#$EventStore| actual@@0) handle@@27)) v@@67))
 :qid |RecoveryAddresscvc5bpl.139:13|
 :skolemid |3|
)))
 :qid |RecoveryAddresscvc5bpl.2803:13|
 :skolemid |80|
))))) (=> (= (ControlFlow 0 245265) (- 0 325574)) (let ((actual@@1 ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected@@1 (let ((stream@@27 (|Select__T@[$1_Event_EventHandle]Multiset_91859_| (|streams#$EventStore| $EmptyEventStore) $t9@@13)))
(let ((stream_new@@1 (let ((len@@1 (|l#Multiset_91859| stream@@27)))
(let ((cnt@@1 (|Select__T@[$EventRep]Int_| (|v#Multiset_91859| stream@@27) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| $t10@@5))))
(Multiset_91859 (|Store__T@[$EventRep]Int_| (|v#Multiset_91859| stream@@27) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| $t10@@5) (+ cnt@@1 1)) (+ len@@1 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_91859_| (|streams#$EventStore| $EmptyEventStore) $t9@@13 stream_new@@1))))))
 (and (<= (|counter#$EventStore| actual@@1) (|counter#$EventStore| expected@@1)) (forall ((handle@@28 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_91859| (|Select__T@[$1_Event_EventHandle]Multiset_91859_| (|streams#$EventStore| actual@@1) handle@@28)) (|l#Multiset_91859| (|Select__T@[$1_Event_EventHandle]Multiset_91859_| (|streams#$EventStore| expected@@1) handle@@28))) (forall ((v@@68 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_91859| (|Select__T@[$1_Event_EventHandle]Multiset_91859_| (|streams#$EventStore| actual@@1) handle@@28)) v@@68) (|Select__T@[$EventRep]Int_| (|v#Multiset_91859| (|Select__T@[$1_Event_EventHandle]Multiset_91859_| (|streams#$EventStore| expected@@1) handle@@28)) v@@68))
 :qid |RecoveryAddresscvc5bpl.139:13|
 :skolemid |3|
)))
 :qid |RecoveryAddresscvc5bpl.2803:13|
 :skolemid |80|
)))))))))))))))))))))))))))))
(let ((L3_correct@@7  (and (=> (= (ControlFlow 0 244761) (- 0 325267)) (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) $t6@@11)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) $t6@@11)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (=> (= (ControlFlow 0 244761) (- 0 325281)) (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) $t6@@11)) (= 5 $t15@0@@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t15@0@@0))))))))
(let ((anon19_Then_correct  (=> (and (and $abort_flag@0@@8 (= $abort_code@1@@8 $abort_code@1@@8)) (and (= $t15@0@@0 $abort_code@1@@8) (= (ControlFlow 0 245279) 244761))) L3_correct@@7)))
(let ((|inline$$1_Event_emit_event'$1_DualAttestation_BaseUrlRotationEvent'$0$anon0_correct|  (=> (and (= |inline$$1_Event_emit_event'$1_DualAttestation_BaseUrlRotationEvent'$0$handle@1| (|v#$Mutation_116783| $t18@0@@3)) (= $es@0 (let ((stream@@28 (|Select__T@[$1_Event_EventHandle]Multiset_91859_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_DualAttestation_BaseUrlRotationEvent'$0$handle@1|)))
(let ((stream_new@@2 (let ((len@@2 (|l#Multiset_91859| stream@@28)))
(let ((cnt@@2 (|Select__T@[$EventRep]Int_| (|v#Multiset_91859| stream@@28) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| $t21@0))))
(Multiset_91859 (|Store__T@[$EventRep]Int_| (|v#Multiset_91859| stream@@28) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| $t21@0) (+ cnt@@2 1)) (+ len@@2 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_91859_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_DualAttestation_BaseUrlRotationEvent'$0$handle@1| stream_new@@2)))))) (and (=> (= (ControlFlow 0 244964) 245279) anon19_Then_correct) (=> (= (ControlFlow 0 244964) 245265) anon19_Else_correct)))))
(let ((anon18_Else_correct@@2  (=> (not $t20@@1) (=> (and (and (|$IsValid'u64'| $t19) (= $t19 (div (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 1000000))) (and (= $t21@0 ($1_DualAttestation_BaseUrlRotationEvent _$t1@@16 $t19)) (= (ControlFlow 0 244970) 244964))) |inline$$1_Event_emit_event'$1_DualAttestation_BaseUrlRotationEvent'$0$anon0_correct|))))
(let ((anon18_Then_correct@@2  (=> $t20@@1 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t15@@0)) (= $t15@@0 $t15@@0)) (and (= $t15@0@@0 $t15@@0) (= (ControlFlow 0 245305) 244761))) L3_correct@@7))))
(let ((anon17_Else_correct@@3  (=> (and (and (and (not $abort_flag@0@@8) (= |$temp_0'$1_DualAttestation_Credential'@0| (|v#$Mutation_187670| $t16@1))) (and (= |$temp_0'$1_DualAttestation_Credential'@0| |$temp_0'$1_DualAttestation_Credential'@0|) (= $t17@0@@2 ($Mutation_111899 (|l#$Mutation_187670| $t16@1) (seq.++ (|p#$Mutation_187670| $t16@1) (seq.unit 1)) (|$base_url#$1_DualAttestation_Credential| (|v#$Mutation_187670| $t16@1)))))) (and (and (= $t17@1 ($Mutation_111899 (|l#$Mutation_111899| $t17@0@@2) (|p#$Mutation_111899| $t17@0@@2) _$t1@@16)) (= $t16@2 ($Mutation_187670 (|l#$Mutation_187670| $t16@1) (|p#$Mutation_187670| $t16@1) ($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (|v#$Mutation_187670| $t16@1)) (|v#$Mutation_111899| $t17@1) (|$compliance_public_key#$1_DualAttestation_Credential| (|v#$Mutation_187670| $t16@1)) (|$expiration_date#$1_DualAttestation_Credential| (|v#$Mutation_187670| $t16@1)) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| (|v#$Mutation_187670| $t16@1)) (|$base_url_rotation_events#$1_DualAttestation_Credential| (|v#$Mutation_187670| $t16@1)))))) (and (= $t18@0@@3 ($Mutation_116783 (|l#$Mutation_187670| $t16@2) (seq.++ (|p#$Mutation_187670| $t16@2) (seq.unit 5)) (|$base_url_rotation_events#$1_DualAttestation_Credential| (|v#$Mutation_187670| $t16@2)))) (= $t20@@1  (not (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (=> (= (ControlFlow 0 244865) 245305) anon18_Then_correct@@2) (=> (= (ControlFlow 0 244865) 244970) anon18_Else_correct@@2)))))
(let ((anon17_Then_correct@@3  (=> (and (and $abort_flag@0@@8 (= $abort_code@1@@8 $abort_code@1@@8)) (and (= $t15@0@@0 $abort_code@1@@8) (= (ControlFlow 0 245319) 244761))) L3_correct@@7)))
(let ((anon16_Then$1_correct  (=> (= $t16@1 $t16@@0) (=> (and (= $abort_flag@0@@8 true) (= $abort_code@1@@8 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 245371) 245319) anon17_Then_correct@@3) (=> (= (ControlFlow 0 245371) 244865) anon17_Else_correct@@3))))))
(let ((anon16_Then_correct@@4  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) $t11@@7)) (= (ControlFlow 0 245369) 245371)) anon16_Then$1_correct)))
(let ((anon16_Else_correct@@4  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) $t11@@7) (=> (and (and (= $t16@0 ($Mutation_187670 ($Global $t11@@7) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) $t11@@7))) (= $t16@1 $t16@0)) (and (= $abort_flag@0@@8 false) (= $abort_code@1@@8 $abort_code@0@@8))) (and (=> (= (ControlFlow 0 244787) 245319) anon17_Then_correct@@3) (=> (= (ControlFlow 0 244787) 244865) anon17_Else_correct@@3))))))
(let ((anon15_Then_correct@@4  (=> $t12@0 (and (=> (= (ControlFlow 0 244765) 245369) anon16_Then_correct@@4) (=> (= (ControlFlow 0 244765) 244787) anon16_Else_correct@@4)))))
(let ((anon15_Else_correct@@4  (=> (and (and (not $t12@0) (= $t14@@8 $t14@@8)) (and (= $t15@0@@0 $t14@@8) (= (ControlFlow 0 244705) 244761))) L3_correct@@7)))
(let ((anon0$1_correct@@24  (=> (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_138391| $1_DiemConfig_Configuration_$memory) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_138001| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_159326| $1_XDX_Reserve_$memory) 173345816)))) (=> (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_156819| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)) (forall ((addr1@@95 Int) ) (!  (=> (|$IsValid'address'| addr1@@95) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@95) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@95) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@95)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@95) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@95)) 2)))))
 :qid |RecoveryAddresscvc5bpl.17942:20|
 :skolemid |390|
)))) (and (and (|$IsValid'address'| (|$addr#$signer| _$t0@@23)) (|$IsValid'vec'u8''| _$t1@@16)) (and (forall (($a_0@@52 Int) ) (! (let (($rsc@@52 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@52)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@52))
 :qid |RecoveryAddresscvc5bpl.17951:20|
 :skolemid |391|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@52))
)) (forall (($a_0@@53 Int) ) (! (let (($rsc@@53 (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) $a_0@@53)))
(|$IsValid'$1_DualAttestation_Credential'| $rsc@@53))
 :qid |RecoveryAddresscvc5bpl.17955:20|
 :skolemid |392|
 :pattern ( (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) $a_0@@53))
))))) (=> (and (and (and (and (= $t6@@11 (|$addr#$signer| _$t0@@23)) (= $t7@@8 (|$addr#$signer| _$t0@@23))) (and (= $t8@@13 (|$addr#$signer| _$t0@@23)) (= $t9@@13 (|$base_url_rotation_events#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) $t8@@13))))) (and (and (= $t10@@5 ($1_DualAttestation_BaseUrlRotationEvent _$t1@@16 (div (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 1000000))) (= _$t0@@23 _$t0@@23)) (and (= _$t1@@16 _$t1@@16) (|$IsValid'address'| $t11@@7)))) (and (and (and (= $t11@@7 (|$addr#$signer| _$t0@@23)) (= $t11@@7 $t11@@7)) (and (= $t12@0 (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) $t11@@7)) (|$IsValid'u64'| 0))) (and (and (|$IsValid'u64'| $t14@@8) (= $t14@@8 5)) (and (= $t14@@8 $t14@@8) (= $t12@0 $t12@0))))) (and (=> (= (ControlFlow 0 244689) 244765) anon15_Then_correct@@4) (=> (= (ControlFlow 0 244689) 244705) anon15_Else_correct@@4)))))))
(let ((inline$$InitEventStore$0$anon0_correct@@24  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@29 T@$1_Event_EventHandle) ) (! (let ((stream@@29 (|Select__T@[$1_Event_EventHandle]Multiset_91859_| (|streams#$EventStore| $es) handle@@29)))
 (and (= (|l#Multiset_91859| stream@@29) 0) (forall ((v@@69 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_91859| stream@@29) v@@69) 0)
 :qid |RecoveryAddresscvc5bpl.134:13|
 :skolemid |2|
))))
 :qid |RecoveryAddresscvc5bpl.2787:13|
 :skolemid |79|
))) (= (ControlFlow 0 244384) 244689)) anon0$1_correct@@24)))
(let ((anon0_correct@@24  (=> (= (seq.len (|p#$Mutation_187670| $t5@@14)) 0) (=> (and (and (= (seq.len (|p#$Mutation_187670| $t16@@0)) 0) (= (seq.len (|p#$Mutation_111899| $t17@@0)) 0)) (and (= (seq.len (|p#$Mutation_116783| $t18)) 0) (= (ControlFlow 0 244394) 244384))) inline$$InitEventStore$0$anon0_correct@@24))))
(let ((PreconditionGeneratedEntry_correct@@1  (=> (= (ControlFlow 0 324526) 244394) anon0_correct@@24)))
PreconditionGeneratedEntry_correct@@1))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@9 () Bool)
(declare-fun $1_DualAttestation_Credential_$memory@0@@1 () T@$Memory_126892)
(declare-fun $t21@2 () T@$Mutation_187670)
(declare-fun _$t1@@17 () (Seq Int))
(declare-fun $t8@@14 () Int)
(declare-fun $t9@@14 () Int)
(declare-fun $es@0@@0 () T@$EventStore)
(declare-fun $t11@@8 () T@$1_Event_EventHandle)
(declare-fun $t12@@7 () T@$1_DualAttestation_ComplianceKeyRotationEvent)
(declare-fun $t17@0@@3 () Int)
(declare-fun $abort_code@1@@9 () Int)
(declare-fun |inline$$1_Event_emit_event'$1_DualAttestation_ComplianceKeyRotationEvent'$0$handle@1| () T@$1_Event_EventHandle)
(declare-fun $t23@0 () T@$Mutation_116783)
(declare-fun $t26@0@@0 () T@$1_DualAttestation_ComplianceKeyRotationEvent)
(declare-fun $t25@@3 () Bool)
(declare-fun $t24@@4 () Int)
(declare-fun $t17@@1 () Int)
(declare-fun |$temp_0'$1_DualAttestation_Credential'@0@@0| () T@$1_DualAttestation_Credential)
(declare-fun $t21@1 () T@$Mutation_187670)
(declare-fun $t22@0 () T@$Mutation_111899)
(declare-fun $t22@1 () T@$Mutation_111899)
(declare-fun $t21@@3 () T@$Mutation_187670)
(declare-fun $t13@@6 () Int)
(declare-fun $t21@0@@0 () T@$Mutation_187670)
(declare-fun $abort_code@0@@9 () Int)
(declare-fun inline$$1_Signature_ed25519_validate_pubkey$0$res@1 () Bool)
(declare-fun $t20@@2 () Int)
(declare-fun $t14@0@@0 () Bool)
(declare-fun $t16@@1 () Int)
(declare-fun _$t0@@24 () T@$signer)
(declare-fun $t10@@6 () Int)
(declare-fun $t7@@9 () T@$Mutation_187670)
(declare-fun $t22@@3 () T@$Mutation_111899)
(declare-fun $t23@@2 () T@$Mutation_116783)
(push 1)
(set-info :boogie-vc-id $1_DualAttestation_rotate_compliance_public_key$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 325605) (let ((anon26_Else_correct@@5  (=> (and (not $abort_flag@0@@9) (= $1_DualAttestation_Credential_$memory@0@@1 ($Memory_126892 (|Store__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) (|a#$Global| (|l#$Mutation_187670| $t21@2)) true) (|Store__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) (|a#$Global| (|l#$Mutation_187670| $t21@2)) (|v#$Mutation_187670| $t21@2))))) (and (=> (= (ControlFlow 0 246625) (- 0 326529)) (forall ((addr1@@96 Int) ) (!  (=> (|$IsValid'address'| addr1@@96) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory@0@@1) addr1@@96) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@96) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@96)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@96) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@96)) 2)))))
 :qid |RecoveryAddresscvc5bpl.18574:15|
 :skolemid |401|
))) (=> (forall ((addr1@@97 Int) ) (!  (=> (|$IsValid'address'| addr1@@97) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory@0@@1) addr1@@97) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@97) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@97)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@97) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@97)) 2)))))
 :qid |RecoveryAddresscvc5bpl.18574:15|
 :skolemid |401|
)) (and (=> (= (ControlFlow 0 246625) (- 0 326565)) (not (not ($1_Signature_$ed25519_validate_pubkey _$t1@@17)))) (=> (not (not ($1_Signature_$ed25519_validate_pubkey _$t1@@17))) (and (=> (= (ControlFlow 0 246625) (- 0 326575)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) $t8@@14)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) $t8@@14))) (and (=> (= (ControlFlow 0 246625) (- 0 326587)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 246625) (- 0 326597)) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory@0@@1) $t9@@14)) _$t1@@17)) (=> (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory@0@@1) $t9@@14)) _$t1@@17) (and (=> (= (ControlFlow 0 246625) (- 0 326610)) (forall ((addr1@@98 Int) ) (!  (=> (|$IsValid'address'| addr1@@98) (=> (not (= addr1@@98 $t9@@14)) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory@0@@1) addr1@@98)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@98)))))
 :qid |RecoveryAddresscvc5bpl.18603:15|
 :skolemid |402|
))) (=> (forall ((addr1@@99 Int) ) (!  (=> (|$IsValid'address'| addr1@@99) (=> (not (= addr1@@99 $t9@@14)) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory@0@@1) addr1@@99)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@99)))))
 :qid |RecoveryAddresscvc5bpl.18603:15|
 :skolemid |402|
)) (and (=> (= (ControlFlow 0 246625) (- 0 326648)) (forall ((addr1@@100 Int) ) (!  (=> (|$IsValid'address'| addr1@@100) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@100) (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory@0@@1) addr1@@100)))
 :qid |RecoveryAddresscvc5bpl.18608:15|
 :skolemid |403|
))) (=> (forall ((addr1@@101 Int) ) (!  (=> (|$IsValid'address'| addr1@@101) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@101) (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory@0@@1) addr1@@101)))
 :qid |RecoveryAddresscvc5bpl.18608:15|
 :skolemid |403|
)) (and (=> (= (ControlFlow 0 246625) (- 0 326672)) (forall ((addr1@@102 Int) ) (!  (=> (|$IsValid'address'| addr1@@102) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@102)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory@0@@1) addr1@@102))))
 :qid |RecoveryAddresscvc5bpl.18613:15|
 :skolemid |404|
))) (=> (forall ((addr1@@103 Int) ) (!  (=> (|$IsValid'address'| addr1@@103) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@103)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory@0@@1) addr1@@103))))
 :qid |RecoveryAddresscvc5bpl.18613:15|
 :skolemid |404|
)) (and (=> (= (ControlFlow 0 246625) (- 0 326700)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)))) (and (=> (= (ControlFlow 0 246625) (- 0 326717)) (forall ((addr1@@104 Int) ) (!  (=> (|$IsValid'address'| addr1@@104) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@104) (= (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory@0@@1) addr1@@104)) (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@104)))))
 :qid |RecoveryAddresscvc5bpl.18623:15|
 :skolemid |405|
))) (=> (forall ((addr1@@105 Int) ) (!  (=> (|$IsValid'address'| addr1@@105) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@105) (= (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory@0@@1) addr1@@105)) (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@105)))))
 :qid |RecoveryAddresscvc5bpl.18623:15|
 :skolemid |405|
)) (and (=> (= (ControlFlow 0 246625) (- 0 326752)) (let ((actual@@2 ($EventStore (- (|counter#$EventStore| $es@0@@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0@@0) (|streams#$EventStore| $es)))))
(let ((expected@@2 (let ((stream@@30 (|Select__T@[$1_Event_EventHandle]Multiset_91859_| (|streams#$EventStore| $EmptyEventStore) $t11@@8)))
(let ((stream_new@@3 (let ((len@@3 (|l#Multiset_91859| stream@@30)))
(let ((cnt@@3 (|Select__T@[$EventRep]Int_| (|v#Multiset_91859| stream@@30) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| $t12@@7))))
(Multiset_91859 (|Store__T@[$EventRep]Int_| (|v#Multiset_91859| stream@@30) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| $t12@@7) (+ cnt@@3 1)) (+ len@@3 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_91859_| (|streams#$EventStore| $EmptyEventStore) $t11@@8 stream_new@@3))))))
 (and (<= (|counter#$EventStore| expected@@2) (|counter#$EventStore| actual@@2)) (forall ((handle@@30 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_91859| (|Select__T@[$1_Event_EventHandle]Multiset_91859_| (|streams#$EventStore| expected@@2) handle@@30)) (|l#Multiset_91859| (|Select__T@[$1_Event_EventHandle]Multiset_91859_| (|streams#$EventStore| actual@@2) handle@@30))) (forall ((v@@70 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_91859| (|Select__T@[$1_Event_EventHandle]Multiset_91859_| (|streams#$EventStore| expected@@2) handle@@30)) v@@70) (|Select__T@[$EventRep]Int_| (|v#Multiset_91859| (|Select__T@[$1_Event_EventHandle]Multiset_91859_| (|streams#$EventStore| actual@@2) handle@@30)) v@@70))
 :qid |RecoveryAddresscvc5bpl.139:13|
 :skolemid |3|
)))
 :qid |RecoveryAddresscvc5bpl.2803:13|
 :skolemid |80|
)))))) (=> (let ((actual@@3 ($EventStore (- (|counter#$EventStore| $es@0@@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0@@0) (|streams#$EventStore| $es)))))
(let ((expected@@3 (let ((stream@@31 (|Select__T@[$1_Event_EventHandle]Multiset_91859_| (|streams#$EventStore| $EmptyEventStore) $t11@@8)))
(let ((stream_new@@4 (let ((len@@4 (|l#Multiset_91859| stream@@31)))
(let ((cnt@@4 (|Select__T@[$EventRep]Int_| (|v#Multiset_91859| stream@@31) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| $t12@@7))))
(Multiset_91859 (|Store__T@[$EventRep]Int_| (|v#Multiset_91859| stream@@31) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| $t12@@7) (+ cnt@@4 1)) (+ len@@4 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_91859_| (|streams#$EventStore| $EmptyEventStore) $t11@@8 stream_new@@4))))))
 (and (<= (|counter#$EventStore| expected@@3) (|counter#$EventStore| actual@@3)) (forall ((handle@@31 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_91859| (|Select__T@[$1_Event_EventHandle]Multiset_91859_| (|streams#$EventStore| expected@@3) handle@@31)) (|l#Multiset_91859| (|Select__T@[$1_Event_EventHandle]Multiset_91859_| (|streams#$EventStore| actual@@3) handle@@31))) (forall ((v@@71 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_91859| (|Select__T@[$1_Event_EventHandle]Multiset_91859_| (|streams#$EventStore| expected@@3) handle@@31)) v@@71) (|Select__T@[$EventRep]Int_| (|v#Multiset_91859| (|Select__T@[$1_Event_EventHandle]Multiset_91859_| (|streams#$EventStore| actual@@3) handle@@31)) v@@71))
 :qid |RecoveryAddresscvc5bpl.139:13|
 :skolemid |3|
)))
 :qid |RecoveryAddresscvc5bpl.2803:13|
 :skolemid |80|
))))) (=> (= (ControlFlow 0 246625) (- 0 326777)) (let ((actual@@4 ($EventStore (- (|counter#$EventStore| $es@0@@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0@@0) (|streams#$EventStore| $es)))))
(let ((expected@@4 (let ((stream@@32 (|Select__T@[$1_Event_EventHandle]Multiset_91859_| (|streams#$EventStore| $EmptyEventStore) $t11@@8)))
(let ((stream_new@@5 (let ((len@@5 (|l#Multiset_91859| stream@@32)))
(let ((cnt@@5 (|Select__T@[$EventRep]Int_| (|v#Multiset_91859| stream@@32) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| $t12@@7))))
(Multiset_91859 (|Store__T@[$EventRep]Int_| (|v#Multiset_91859| stream@@32) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| $t12@@7) (+ cnt@@5 1)) (+ len@@5 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_91859_| (|streams#$EventStore| $EmptyEventStore) $t11@@8 stream_new@@5))))))
 (and (<= (|counter#$EventStore| actual@@4) (|counter#$EventStore| expected@@4)) (forall ((handle@@32 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_91859| (|Select__T@[$1_Event_EventHandle]Multiset_91859_| (|streams#$EventStore| actual@@4) handle@@32)) (|l#Multiset_91859| (|Select__T@[$1_Event_EventHandle]Multiset_91859_| (|streams#$EventStore| expected@@4) handle@@32))) (forall ((v@@72 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_91859| (|Select__T@[$1_Event_EventHandle]Multiset_91859_| (|streams#$EventStore| actual@@4) handle@@32)) v@@72) (|Select__T@[$EventRep]Int_| (|v#Multiset_91859| (|Select__T@[$1_Event_EventHandle]Multiset_91859_| (|streams#$EventStore| expected@@4) handle@@32)) v@@72))
 :qid |RecoveryAddresscvc5bpl.139:13|
 :skolemid |3|
)))
 :qid |RecoveryAddresscvc5bpl.2803:13|
 :skolemid |80|
)))))))))))))))))))))))))))))))
(let ((anon21_Then_correct@@0 true))
(let ((L5_correct@@1  (and (=> (= (ControlFlow 0 246019) (- 0 326439)) (or (or (not ($1_Signature_$ed25519_validate_pubkey _$t1@@17)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) $t8@@14))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (or (or (not ($1_Signature_$ed25519_validate_pubkey _$t1@@17)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) $t8@@14))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (=> (= (ControlFlow 0 246019) (- 0 326460)) (or (or (and (not ($1_Signature_$ed25519_validate_pubkey _$t1@@17)) (= 7 $t17@0@@3)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) $t8@@14)) (= 5 $t17@0@@3))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t17@0@@3))))))))
(let ((anon26_Then_correct@@5  (=> (and (and $abort_flag@0@@9 (= $abort_code@1@@9 $abort_code@1@@9)) (and (= $t17@0@@3 $abort_code@1@@9) (= (ControlFlow 0 246639) 246019))) L5_correct@@1)))
(let ((|inline$$1_Event_emit_event'$1_DualAttestation_ComplianceKeyRotationEvent'$0$anon0_correct|  (=> (and (= |inline$$1_Event_emit_event'$1_DualAttestation_ComplianceKeyRotationEvent'$0$handle@1| (|v#$Mutation_116783| $t23@0)) (= $es@0@@0 (let ((stream@@33 (|Select__T@[$1_Event_EventHandle]Multiset_91859_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_DualAttestation_ComplianceKeyRotationEvent'$0$handle@1|)))
(let ((stream_new@@6 (let ((len@@6 (|l#Multiset_91859| stream@@33)))
(let ((cnt@@6 (|Select__T@[$EventRep]Int_| (|v#Multiset_91859| stream@@33) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| $t26@0@@0))))
(Multiset_91859 (|Store__T@[$EventRep]Int_| (|v#Multiset_91859| stream@@33) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| $t26@0@@0) (+ cnt@@6 1)) (+ len@@6 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_91859_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_DualAttestation_ComplianceKeyRotationEvent'$0$handle@1| stream_new@@6)))))) (and (=> (= (ControlFlow 0 246314) 246639) anon26_Then_correct@@5) (=> (= (ControlFlow 0 246314) 246625) anon26_Else_correct@@5)))))
(let ((anon25_Else_correct@@4  (=> (not $t25@@3) (=> (and (and (|$IsValid'u64'| $t24@@4) (= $t24@@4 (div (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 1000000))) (and (= $t26@0@@0 ($1_DualAttestation_ComplianceKeyRotationEvent _$t1@@17 $t24@@4)) (= (ControlFlow 0 246320) 246314))) |inline$$1_Event_emit_event'$1_DualAttestation_ComplianceKeyRotationEvent'$0$anon0_correct|))))
(let ((anon25_Then_correct@@4  (=> $t25@@3 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t17@@1)) (= $t17@@1 $t17@@1)) (and (= $t17@0@@3 $t17@@1) (= (ControlFlow 0 246665) 246019))) L5_correct@@1))))
(let ((anon24_Else_correct@@4  (=> (and (and (and (not $abort_flag@0@@9) (= |$temp_0'$1_DualAttestation_Credential'@0@@0| (|v#$Mutation_187670| $t21@1))) (and (= |$temp_0'$1_DualAttestation_Credential'@0@@0| |$temp_0'$1_DualAttestation_Credential'@0@@0|) (= $t22@0 ($Mutation_111899 (|l#$Mutation_187670| $t21@1) (seq.++ (|p#$Mutation_187670| $t21@1) (seq.unit 2)) (|$compliance_public_key#$1_DualAttestation_Credential| (|v#$Mutation_187670| $t21@1)))))) (and (and (= $t22@1 ($Mutation_111899 (|l#$Mutation_111899| $t22@0) (|p#$Mutation_111899| $t22@0) _$t1@@17)) (= $t21@2 ($Mutation_187670 (|l#$Mutation_187670| $t21@1) (|p#$Mutation_187670| $t21@1) ($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (|v#$Mutation_187670| $t21@1)) (|$base_url#$1_DualAttestation_Credential| (|v#$Mutation_187670| $t21@1)) (|v#$Mutation_111899| $t22@1) (|$expiration_date#$1_DualAttestation_Credential| (|v#$Mutation_187670| $t21@1)) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| (|v#$Mutation_187670| $t21@1)) (|$base_url_rotation_events#$1_DualAttestation_Credential| (|v#$Mutation_187670| $t21@1)))))) (and (= $t23@0 ($Mutation_116783 (|l#$Mutation_187670| $t21@2) (seq.++ (|p#$Mutation_187670| $t21@2) (seq.unit 4)) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| (|v#$Mutation_187670| $t21@2)))) (= $t25@@3  (not (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (=> (= (ControlFlow 0 246215) 246665) anon25_Then_correct@@4) (=> (= (ControlFlow 0 246215) 246320) anon25_Else_correct@@4)))))
(let ((anon24_Then_correct@@4  (=> (and (and $abort_flag@0@@9 (= $abort_code@1@@9 $abort_code@1@@9)) (and (= $t17@0@@3 $abort_code@1@@9) (= (ControlFlow 0 246679) 246019))) L5_correct@@1)))
(let ((anon23_Then$1_correct  (=> (= $t21@1 $t21@@3) (=> (and (= $abort_flag@0@@9 true) (= $abort_code@1@@9 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 246731) 246679) anon24_Then_correct@@4) (=> (= (ControlFlow 0 246731) 246215) anon24_Else_correct@@4))))))
(let ((anon23_Then_correct@@4  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) $t13@@6)) (= (ControlFlow 0 246729) 246731)) anon23_Then$1_correct)))
(let ((anon23_Else_correct@@4  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) $t13@@6) (=> (and (and (= $t21@0@@0 ($Mutation_187670 ($Global $t13@@6) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) $t13@@6))) (= $t21@1 $t21@0@@0)) (and (= $abort_flag@0@@9 false) (= $abort_code@1@@9 $abort_code@0@@9))) (and (=> (= (ControlFlow 0 246137) 246679) anon24_Then_correct@@4) (=> (= (ControlFlow 0 246137) 246215) anon24_Else_correct@@4))))))
(let ((anon22_Then_correct@@1  (=> inline$$1_Signature_ed25519_validate_pubkey$0$res@1 (and (=> (= (ControlFlow 0 246115) 246729) anon23_Then_correct@@4) (=> (= (ControlFlow 0 246115) 246137) anon23_Else_correct@@4)))))
(let ((anon22_Else_correct@@1  (=> (and (and (not inline$$1_Signature_ed25519_validate_pubkey$0$res@1) (= $t20@@2 $t20@@2)) (and (= $t17@0@@3 $t20@@2) (= (ControlFlow 0 246111) 246019))) L5_correct@@1)))
(let ((anon21_Else_correct@@0  (=> (and (not false) (|$IsValid'u64'| 2)) (=> (and (and (|$IsValid'u64'| $t20@@2) (= $t20@@2 7)) (and (= $t20@@2 $t20@@2) (= inline$$1_Signature_ed25519_validate_pubkey$0$res@1 inline$$1_Signature_ed25519_validate_pubkey$0$res@1))) (and (=> (= (ControlFlow 0 246095) 246115) anon22_Then_correct@@1) (=> (= (ControlFlow 0 246095) 246111) anon22_Else_correct@@1))))))
(let ((inline$$1_Signature_ed25519_validate_pubkey$0$anon0_correct  (=> (= inline$$1_Signature_ed25519_validate_pubkey$0$res@1 ($1_Signature_$ed25519_validate_pubkey _$t1@@17)) (and (=> (= (ControlFlow 0 246053) 246745) anon21_Then_correct@@0) (=> (= (ControlFlow 0 246053) 246095) anon21_Else_correct@@0)))))
(let ((anon20_Then_correct@@0  (=> (and $t14@0@@0 (= (ControlFlow 0 246059) 246053)) inline$$1_Signature_ed25519_validate_pubkey$0$anon0_correct)))
(let ((anon20_Else_correct@@0  (=> (and (and (not $t14@0@@0) (= $t16@@1 $t16@@1)) (and (= $t17@0@@3 $t16@@1) (= (ControlFlow 0 245939) 246019))) L5_correct@@1)))
(let ((anon0$1_correct@@25  (=> (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_138391| $1_DiemConfig_Configuration_$memory) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_138001| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_159326| $1_XDX_Reserve_$memory) 173345816)))) (=> (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_143664| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_156819| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)) (forall ((addr1@@106 Int) ) (!  (=> (|$IsValid'address'| addr1@@106) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@106) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@106) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@106)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@106) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@106)) 2)))))
 :qid |RecoveryAddresscvc5bpl.18318:20|
 :skolemid |398|
)))) (and (and (|$IsValid'address'| (|$addr#$signer| _$t0@@24)) (|$IsValid'vec'u8''| _$t1@@17)) (and (forall (($a_0@@54 Int) ) (! (let (($rsc@@54 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@54)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@54))
 :qid |RecoveryAddresscvc5bpl.18327:20|
 :skolemid |399|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@54))
)) (forall (($a_0@@55 Int) ) (! (let (($rsc@@55 (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) $a_0@@55)))
(|$IsValid'$1_DualAttestation_Credential'| $rsc@@55))
 :qid |RecoveryAddresscvc5bpl.18331:20|
 :skolemid |400|
 :pattern ( (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) $a_0@@55))
))))) (=> (and (and (and (and (= $t8@@14 (|$addr#$signer| _$t0@@24)) (= $t9@@14 (|$addr#$signer| _$t0@@24))) (and (= $t10@@6 (|$addr#$signer| _$t0@@24)) (= $t11@@8 (|$compliance_key_rotation_events#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) $t10@@6))))) (and (and (= $t12@@7 ($1_DualAttestation_ComplianceKeyRotationEvent _$t1@@17 (div (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 1000000))) (= _$t0@@24 _$t0@@24)) (and (= _$t1@@17 _$t1@@17) (|$IsValid'address'| $t13@@6)))) (and (and (and (= $t13@@6 (|$addr#$signer| _$t0@@24)) (= $t13@@6 $t13@@6)) (and (= $t14@0@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) $t13@@6)) (|$IsValid'u64'| 0))) (and (and (|$IsValid'u64'| $t16@@1) (= $t16@@1 5)) (and (= $t16@@1 $t16@@1) (= $t14@0@@0 $t14@0@@0))))) (and (=> (= (ControlFlow 0 245923) 246059) anon20_Then_correct@@0) (=> (= (ControlFlow 0 245923) 245939) anon20_Else_correct@@0)))))))
(let ((inline$$InitEventStore$0$anon0_correct@@25  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@33 T@$1_Event_EventHandle) ) (! (let ((stream@@34 (|Select__T@[$1_Event_EventHandle]Multiset_91859_| (|streams#$EventStore| $es) handle@@33)))
 (and (= (|l#Multiset_91859| stream@@34) 0) (forall ((v@@73 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_91859| stream@@34) v@@73) 0)
 :qid |RecoveryAddresscvc5bpl.134:13|
 :skolemid |2|
))))
 :qid |RecoveryAddresscvc5bpl.2787:13|
 :skolemid |79|
))) (= (ControlFlow 0 245618) 245923)) anon0$1_correct@@25)))
(let ((anon0_correct@@25  (=> (= (seq.len (|p#$Mutation_187670| $t7@@9)) 0) (=> (and (and (= (seq.len (|p#$Mutation_187670| $t21@@3)) 0) (= (seq.len (|p#$Mutation_111899| $t22@@3)) 0)) (and (= (seq.len (|p#$Mutation_116783| $t23@@2)) 0) (= (ControlFlow 0 245628) 245618))) inline$$InitEventStore$0$anon0_correct@@25))))
(let ((PreconditionGeneratedEntry_correct@@2  (=> (= (ControlFlow 0 325605) 245628) anon0_correct@@25)))
PreconditionGeneratedEntry_correct@@2)))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@10 () Bool)
(declare-fun $t14@0@@1 () T@$Mutation_13443)
(declare-fun $t13@1 () T@$Mutation_191261)
(declare-fun $t14@1@@0 () T@$Mutation_13443)
(declare-fun _$t1@@18 () Int)
(declare-fun $t13@2 () T@$Mutation_191261)
(declare-fun $1_DualAttestation_Limit_$memory@0@@0 () T@$Memory_124467)
(declare-fun $t4@@8 () Int)
(declare-fun _$t0@@25 () T@$signer)
(declare-fun $t7@0@@4 () Int)
(declare-fun $abort_code@1@@10 () Int)
(declare-fun $t13@@7 () T@$Mutation_191261)
(declare-fun $t13@0@@0 () T@$Mutation_191261)
(declare-fun $abort_code@0@@10 () Int)
(declare-fun $t9@0@@1 () Bool)
(declare-fun $t11@@9 () Int)
(declare-fun $t6@@12 () Bool)
(declare-fun $t5@@15 () Int)
(declare-fun $t7@@10 () Int)
(declare-fun $t14@@9 () T@$Mutation_13443)
(push 1)
(set-info :boogie-vc-id $1_DualAttestation_set_microdiem_limit$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 326809) (let ((anon15_Else_correct@@5  (=> (not $abort_flag@0@@10) (=> (and (and (= $t14@0@@1 ($Mutation_13443 (|l#$Mutation_191261| $t13@1) (seq.++ (|p#$Mutation_191261| $t13@1) (seq.unit 0)) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|v#$Mutation_191261| $t13@1)))) (= $t14@1@@0 ($Mutation_13443 (|l#$Mutation_13443| $t14@0@@1) (|p#$Mutation_13443| $t14@0@@1) _$t1@@18))) (and (= $t13@2 ($Mutation_191261 (|l#$Mutation_191261| $t13@1) (|p#$Mutation_191261| $t13@1) ($1_DualAttestation_Limit (|v#$Mutation_13443| $t14@1@@0)))) (= $1_DualAttestation_Limit_$memory@0@@0 ($Memory_124467 (|Store__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) (|a#$Global| (|l#$Mutation_191261| $t13@2)) true) (|Store__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) (|a#$Global| (|l#$Mutation_191261| $t13@2)) (|v#$Mutation_191261| $t13@2)))))) (and (=> (= (ControlFlow 0 247826) (- 0 327656)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory@0@@0) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory@0@@0) 173345816)) (and (=> (= (ControlFlow 0 247826) (- 0 327671)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t4@@8)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t4@@8))) (and (=> (= (ControlFlow 0 247826) (- 0 327683)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t4@@8)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t4@@8)) 1))) (and (=> (= (ControlFlow 0 247826) (- 0 327701)) (not (not (= (|$addr#$signer| _$t0@@25) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t0@@25) 186537453))) (and (=> (= (ControlFlow 0 247826) (- 0 327715)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (and (=> (= (ControlFlow 0 247826) (- 0 327725)) (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory@0@@0) 173345816)) _$t1@@18)) (=> (= (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory@0@@0) 173345816)) _$t1@@18) (and (=> (= (ControlFlow 0 247826) (- 0 327738)) (forall ((addr1@@107 Int) ) (!  (=> (|$IsValid'address'| addr1@@107) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@107) (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@107)))
 :qid |RecoveryAddresscvc5bpl.18916:15|
 :skolemid |415|
))) (=> (forall ((addr1@@108 Int) ) (!  (=> (|$IsValid'address'| addr1@@108) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@108) (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@108)))
 :qid |RecoveryAddresscvc5bpl.18916:15|
 :skolemid |415|
)) (and (=> (= (ControlFlow 0 247826) (- 0 327763)) (forall ((addr1@@109 Int) ) (!  (=> (|$IsValid'address'| addr1@@109) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@109)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@109))))
 :qid |RecoveryAddresscvc5bpl.18921:15|
 :skolemid |416|
))) (=> (forall ((addr1@@110 Int) ) (!  (=> (|$IsValid'address'| addr1@@110) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@110)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@110))))
 :qid |RecoveryAddresscvc5bpl.18921:15|
 :skolemid |416|
)) (and (=> (= (ControlFlow 0 247826) (- 0 327792)) (forall ((addr1@@111 Int) ) (!  (=> (|$IsValid'address'| addr1@@111) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@111) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@111)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@111)))))
 :qid |RecoveryAddresscvc5bpl.18926:15|
 :skolemid |417|
))) (=> (forall ((addr1@@112 Int) ) (!  (=> (|$IsValid'address'| addr1@@112) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@112) (= (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@112)) (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@112)))))
 :qid |RecoveryAddresscvc5bpl.18926:15|
 :skolemid |417|
)) (=> (= (ControlFlow 0 247826) (- 0 327828)) (forall ((addr1@@113 Int) ) (!  (=> (|$IsValid'address'| addr1@@113) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@113) (= (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@113)) (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@113)))))
 :qid |RecoveryAddresscvc5bpl.18931:15|
 :skolemid |418|
)))))))))))))))))))))))))
(let ((L3_correct@@8  (and (=> (= (ControlFlow 0 247532) (- 0 327478)) (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t4@@8)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t4@@8)) 1))) (not (= (|$addr#$signer| _$t0@@25) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)))) (=> (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t4@@8)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t4@@8)) 1))) (not (= (|$addr#$signer| _$t0@@25) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (=> (= (ControlFlow 0 247532) (- 0 327518)) (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t4@@8)) (= 5 $t7@0@@4)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t4@@8)) 1)) (= 3 $t7@0@@4))) (and (not (= (|$addr#$signer| _$t0@@25) 186537453)) (= 2 $t7@0@@4))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)) (= 5 $t7@0@@4))))))))
(let ((anon15_Then_correct@@5  (=> (and (and $abort_flag@0@@10 (= $abort_code@1@@10 $abort_code@1@@10)) (and (= $t7@0@@4 $abort_code@1@@10) (= (ControlFlow 0 247840) 247532))) L3_correct@@8)))
(let ((anon14_Then$1_correct  (=> (= $t13@1 $t13@@7) (=> (and (= $abort_flag@0@@10 true) (= $abort_code@1@@10 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 247892) 247840) anon15_Then_correct@@5) (=> (= (ControlFlow 0 247892) 247826) anon15_Else_correct@@5))))))
(let ((anon14_Then_correct@@5  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)) (= (ControlFlow 0 247890) 247892)) anon14_Then$1_correct)))
(let ((anon14_Else_correct@@5  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816) (=> (and (and (= $t13@0@@0 ($Mutation_191261 ($Global 173345816) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (= $t13@1 $t13@0@@0)) (and (= $abort_flag@0@@10 false) (= $abort_code@1@@10 $abort_code@0@@10))) (and (=> (= (ControlFlow 0 247564) 247840) anon15_Then_correct@@5) (=> (= (ControlFlow 0 247564) 247826) anon15_Else_correct@@5))))))
(let ((anon13_Then_correct@@2  (=> (and $t9@0@@1 (|$IsValid'address'| 173345816)) (and (=> (= (ControlFlow 0 247542) 247890) anon14_Then_correct@@5) (=> (= (ControlFlow 0 247542) 247564) anon14_Else_correct@@5)))))
(let ((anon13_Else_correct@@2  (=> (and (and (not $t9@0@@1) (= $t11@@9 $t11@@9)) (and (= $t7@0@@4 $t11@@9) (= (ControlFlow 0 247404) 247532))) L3_correct@@8)))
(let ((anon12_Else_correct@@7  (=> (and (and (and (not $t6@@12) (|$IsValid'address'| 173345816)) (and (= $t9@0@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816)) (|$IsValid'u64'| 1))) (and (and (|$IsValid'u64'| $t11@@9) (= $t11@@9 5)) (and (= $t11@@9 $t11@@9) (= $t9@0@@1 $t9@0@@1)))) (and (=> (= (ControlFlow 0 247388) 247542) anon13_Then_correct@@2) (=> (= (ControlFlow 0 247388) 247404) anon13_Else_correct@@2)))))
(let ((anon12_Then_correct@@7  (=> $t6@@12 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t5@@15)) (= 5 $t7@@10)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t5@@15)) 1)) (= 3 $t7@@10))) (and (not (= (|$addr#$signer| _$t0@@25) 186537453)) (= 2 $t7@@10))) (= $t7@@10 $t7@@10)) (and (= $t7@0@@4 $t7@@10) (= (ControlFlow 0 247964) 247532))) L3_correct@@8))))
(let ((anon0$1_correct@@26  (=> (and (and (forall ((mint_cap_owner@@1 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_148973| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner@@1) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) mint_cap_owner@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) mint_cap_owner@@1)) 1))))
 :qid |RecoveryAddresscvc5bpl.18706:21|
 :skolemid |406|
)) (forall ((mint_cap_owner@@2 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_149060| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner@@2) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) mint_cap_owner@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) mint_cap_owner@@2)) 1))))
 :qid |RecoveryAddresscvc5bpl.18706:268|
 :skolemid |407|
))) (and (forall ((addr1@@114 Int) ) (!  (=> (|$IsValid'address'| addr1@@114) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_144253| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr1@@114) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@114) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@114)) 1))))
 :qid |RecoveryAddresscvc5bpl.18710:21|
 :skolemid |408|
)) (forall ((addr1@@115 Int) ) (!  (=> (|$IsValid'address'| addr1@@115) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_144340| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) addr1@@115) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@115) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@115)) 1))))
 :qid |RecoveryAddresscvc5bpl.18710:231|
 :skolemid |409|
)))) (=> (and (and (and (and (forall ((addr1@@116 Int) ) (!  (=> (|$IsValid'address'| addr1@@116) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_149642| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr1@@116) (|Select__T@[Int]Bool_| (|domain#$Memory_149233| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr1@@116)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@116) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@116)) 2))))
 :qid |RecoveryAddresscvc5bpl.18714:21|
 :skolemid |410|
)) (forall ((addr1@@117 Int) ) (!  (=> (|$IsValid'address'| addr1@@117) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_149741| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr1@@117) (|Select__T@[Int]Bool_| (|domain#$Memory_149324| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr1@@117)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@117) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@117)) 2))))
 :qid |RecoveryAddresscvc5bpl.18714:292|
 :skolemid |411|
))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_122999| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_124467| $1_DualAttestation_Limit_$memory) 173345816))) (and (forall ((addr1@@118 Int) ) (!  (=> (|$IsValid'address'| addr1@@118) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126892| $1_DualAttestation_Credential_$memory) addr1@@118) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@118) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@118)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@118) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) addr1@@118)) 2)))))
 :qid |RecoveryAddresscvc5bpl.18726:20|
 :skolemid |412|
)) (|$IsValid'address'| (|$addr#$signer| _$t0@@25)))) (and (and (and (|$IsValid'u64'| _$t1@@18) (forall (($a_0@@56 Int) ) (! (let (($rsc@@56 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $a_0@@56)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@56))
 :qid |RecoveryAddresscvc5bpl.18735:20|
 :skolemid |413|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $a_0@@56))
))) (and (forall (($a_0@@57 Int) ) (! (let (($rsc@@57 (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) $a_0@@57)))
(|$IsValid'$1_DualAttestation_Limit'| $rsc@@57))
 :qid |RecoveryAddresscvc5bpl.18739:20|
 :skolemid |414|
 :pattern ( (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_124467| $1_DualAttestation_Limit_$memory) $a_0@@57))
)) (= $t4@@8 (|$addr#$signer| _$t0@@25)))) (and (and (= _$t0@@25 _$t0@@25) (= _$t1@@18 _$t1@@18)) (and (= $t5@@15 (|$addr#$signer| _$t0@@25)) (= $t6@@12  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_124848| $1_Roles_RoleId_$memory) $t5@@15)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_124848| $1_Roles_RoleId_$memory) $t5@@15)) 1))) (not (= (|$addr#$signer| _$t0@@25) 186537453)))))))) (and (=> (= (ControlFlow 0 247340) 247964) anon12_Then_correct@@7) (=> (= (ControlFlow 0 247340) 247388) anon12_Else_correct@@7))))))
(let ((inline$$InitEventStore$0$anon0_correct@@26  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@34 T@$1_Event_EventHandle) ) (! (let ((stream@@35 (|Select__T@[$1_Event_EventHandle]Multiset_91859_| (|streams#$EventStore| $es) handle@@34)))
 (and (= (|l#Multiset_91859| stream@@35) 0) (forall ((v@@74 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_91859| stream@@35) v@@74) 0)
 :qid |RecoveryAddresscvc5bpl.134:13|
 :skolemid |2|
))))
 :qid |RecoveryAddresscvc5bpl.2787:13|
 :skolemid |79|
))) (= (ControlFlow 0 246987) 247340)) anon0$1_correct@@26)))
(let ((anon0_correct@@26  (=> (= (seq.len (|p#$Mutation_191261| $t13@@7)) 0) (=> (and (= (seq.len (|p#$Mutation_13443| $t14@@9)) 0) (= (ControlFlow 0 246997) 246987)) inline$$InitEventStore$0$anon0_correct@@26))))
(let ((PreconditionGeneratedEntry_correct@@3  (=> (= (ControlFlow 0 326809) 246997) anon0_correct@@26)))
PreconditionGeneratedEntry_correct@@3)))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(push 1)
(set-info :boogie-vc-id $1_Genesis_initialize$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 327878) true)
))
(check-sat)
(pop 1)
; Valid
