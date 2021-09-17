(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :pre-skolem-quant true)
(set-option :no-dt-share-sel true)
(set-logic ALL)
; done setting options


(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_74899 0)) ((($Memory_74899 (|domain#$Memory_74899| |T@[Int]Bool|) (|contents#$Memory_74899| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((|T@$1_DesignatedDealer_TierInfo'#0'| 0)) (((|$1_DesignatedDealer_TierInfo'#0'| (|$window_start#$1_DesignatedDealer_TierInfo'#0'| Int) (|$window_inflow#$1_DesignatedDealer_TierInfo'#0'| Int) (|$tiers#$1_DesignatedDealer_TierInfo'#0'| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_TierInfo'#0'| 0)
(declare-datatypes ((T@$Memory_92802 0)) ((($Memory_92802 (|domain#$Memory_92802| |T@[Int]Bool|) (|contents#$Memory_92802| |T@[Int]$1_DesignatedDealer_TierInfo'#0'|) ) ) ))
(declare-datatypes ((|T@$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| 0)) (((|$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| (|$window_start#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| Int) (|$window_inflow#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| Int) (|$tiers#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_92631 0)) ((($Memory_92631 (|domain#$Memory_92631| |T@[Int]Bool|) (|contents#$Memory_92631| |T@[Int]$1_DesignatedDealer_TierInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| 0)) (((|$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| (|$window_start#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| Int) (|$window_inflow#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| Int) (|$tiers#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_92460 0)) ((($Memory_92460 (|domain#$Memory_92460| |T@[Int]Bool|) (|contents#$Memory_92460| |T@[Int]$1_DesignatedDealer_TierInfo'$1_XUS_XUS'|) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_92161 0)) ((($Memory_92161 (|domain#$Memory_92161| |T@[Int]Bool|) (|contents#$Memory_92161| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (Seq Int)) (|$base_url#$1_DualAttestation_Credential| (Seq Int)) (|$compliance_public_key#$1_DualAttestation_Credential| (Seq Int)) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_91467 0)) ((($Memory_91467 (|domain#$Memory_91467| |T@[Int]Bool|) (|contents#$Memory_91467| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_91287 0)) ((($Memory_91287 (|domain#$Memory_91287| |T@[Int]Bool|) (|contents#$Memory_91287| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_91223 0)) ((($Memory_91223 (|domain#$Memory_91223| |T@[Int]Bool|) (|contents#$Memory_91223| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_91091 0)) ((($Memory_91091 (|domain#$Memory_91091| |T@[Int]Bool|) (|contents#$Memory_91091| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomains 0)) ((($1_VASPDomain_VASPDomains (|$domains#$1_VASPDomain_VASPDomains| (Seq T@$1_VASPDomain_VASPDomain)) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomains| 0)
(declare-datatypes ((T@$Memory_91190 0)) ((($Memory_91190 (|domain#$Memory_91190| |T@[Int]Bool|) (|contents#$Memory_91190| |T@[Int]$1_VASPDomain_VASPDomains|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'#0'| 0)) (((|$1_Diem_MintCapability'#0'| (|$dummy_field#$1_Diem_MintCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'#0'| 0)
(declare-datatypes ((T@$Memory_82212 0)) ((($Memory_82212 (|domain#$Memory_82212| |T@[Int]Bool|) (|contents#$Memory_82212| |T@[Int]$1_Diem_MintCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_82148 0)) ((($Memory_82148 (|domain#$Memory_82148| |T@[Int]Bool|) (|contents#$Memory_82148| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_82084 0)) ((($Memory_82084 (|domain#$Memory_82084| |T@[Int]Bool|) (|contents#$Memory_82084| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'#0'| 0)) (((|$1_Diem_Diem'#0'| (|$value#$1_Diem_Diem'#0'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'#0'| 0)) (((|$1_Diem_Preburn'#0'| (|$to_burn#$1_Diem_Preburn'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'#0'| 0)
(declare-datatypes ((T@$Memory_87480 0)) ((($Memory_87480 (|domain#$Memory_87480| |T@[Int]Bool|) (|contents#$Memory_87480| |T@[Int]$1_Diem_Preburn'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'#0'| 0)) (((|$1_Diem_PreburnWithMetadata'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| |T@$1_Diem_Preburn'#0'|) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'#0'| 0)) (((|$1_Diem_PreburnQueue'#0'| (|$preburns#$1_Diem_PreburnQueue'#0'| (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'#0'| 0)
(declare-datatypes ((T@$Memory_87905 0)) ((($Memory_87905 (|domain#$Memory_87905| |T@[Int]Bool|) (|contents#$Memory_87905| |T@[Int]$1_Diem_PreburnQueue'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_93820 0)) ((($Memory_93820 (|domain#$Memory_93820| |T@[Int]Bool|) (|contents#$Memory_93820| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_87389 0)) ((($Memory_87389 (|domain#$Memory_87389| |T@[Int]Bool|) (|contents#$Memory_87389| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_87806 0)) ((($Memory_87806 (|domain#$Memory_87806| |T@[Int]Bool|) (|contents#$Memory_87806| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_93760 0)) ((($Memory_93760 (|domain#$Memory_93760| |T@[Int]Bool|) (|contents#$Memory_93760| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_87298 0)) ((($Memory_87298 (|domain#$Memory_87298| |T@[Int]Bool|) (|contents#$Memory_87298| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_87707 0)) ((($Memory_87707 (|domain#$Memory_87707| |T@[Int]Bool|) (|contents#$Memory_87707| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'#0'| 0)) (((|$1_Diem_CurrencyInfo'#0'| (|$total_value#$1_Diem_CurrencyInfo'#0'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| Int) (|$currency_code#$1_Diem_CurrencyInfo'#0'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'#0'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'#0'| 0)
(declare-datatypes ((T@$Memory_81686 0)) ((($Memory_81686 (|domain#$Memory_81686| |T@[Int]Bool|) (|contents#$Memory_81686| |T@[Int]$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_81567 0)) ((($Memory_81567 (|domain#$Memory_81567| |T@[Int]Bool|) (|contents#$Memory_81567| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_81448 0)) ((($Memory_81448 (|domain#$Memory_81448| |T@[Int]Bool|) (|contents#$Memory_81448| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_80902 0)) ((($Memory_80902 (|domain#$Memory_80902| |T@[Int]Bool|) (|contents#$Memory_80902| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (Seq Int)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_97160 0)) ((($Memory_97160 (|domain#$Memory_97160| |T@[Int]Bool|) (|contents#$Memory_97160| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| (Seq Int)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_80935 0)) ((($Memory_80935 (|domain#$Memory_80935| |T@[Int]Bool|) (|contents#$Memory_80935| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_80391 0)) ((($Memory_80391 (|domain#$Memory_80391| |T@[Int]Bool|) (|contents#$Memory_80391| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_79975 0)) ((($Memory_79975 (|domain#$Memory_79975| |T@[Int]Bool|) (|contents#$Memory_79975| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_79648 0)) ((($Memory_79648 (|domain#$Memory_79648| |T@[Int]Bool|) (|contents#$Memory_79648| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_79526 0)) ((($Memory_79526 (|domain#$Memory_79526| |T@[Int]Bool|) (|contents#$Memory_79526| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainEvent 0)) ((($1_VASPDomain_VASPDomainEvent (|$removed#$1_VASPDomain_VASPDomainEvent| Bool) (|$domain#$1_VASPDomain_VASPDomainEvent| T@$1_VASPDomain_VASPDomain) (|$address#$1_VASPDomain_VASPDomainEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_ComplianceKeyRotationEvent 0)) ((($1_DualAttestation_ComplianceKeyRotationEvent (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| (Seq Int)) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_BaseUrlRotationEvent 0)) ((($1_DualAttestation_BaseUrlRotationEvent (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| (Seq Int)) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_ToXDXExchangeRateUpdateEvent 0)) ((($1_Diem_ToXDXExchangeRateUpdateEvent (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| (Seq Int)) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_PreburnEvent 0)) ((($1_Diem_PreburnEvent (|$amount#$1_Diem_PreburnEvent| Int) (|$currency_code#$1_Diem_PreburnEvent| (Seq Int)) (|$preburn_address#$1_Diem_PreburnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_MintEvent 0)) ((($1_Diem_MintEvent (|$amount#$1_Diem_MintEvent| Int) (|$currency_code#$1_Diem_MintEvent| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_Diem_CancelBurnEvent 0)) ((($1_Diem_CancelBurnEvent (|$amount#$1_Diem_CancelBurnEvent| Int) (|$currency_code#$1_Diem_CancelBurnEvent| (Seq Int)) (|$preburn_address#$1_Diem_CancelBurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_BurnEvent 0)) ((($1_Diem_BurnEvent (|$amount#$1_Diem_BurnEvent| Int) (|$currency_code#$1_Diem_BurnEvent| (Seq Int)) (|$preburn_address#$1_Diem_BurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_SentPaymentEvent 0)) ((($1_DiemAccount_SentPaymentEvent (|$amount#$1_DiemAccount_SentPaymentEvent| Int) (|$currency_code#$1_DiemAccount_SentPaymentEvent| (Seq Int)) (|$payee#$1_DiemAccount_SentPaymentEvent| Int) (|$metadata#$1_DiemAccount_SentPaymentEvent| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_ReceivedPaymentEvent 0)) ((($1_DiemAccount_ReceivedPaymentEvent (|$amount#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| (Seq Int)) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_ReceivedMintEvent 0)) ((($1_DesignatedDealer_ReceivedMintEvent (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| (Seq Int)) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| Int) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| (|e#$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| T@$1_DesignatedDealer_ReceivedMintEvent) ) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| T@$1_DiemAccount_ReceivedPaymentEvent) ) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_SentPaymentEvent'| T@$1_DiemAccount_SentPaymentEvent) ) (|$ToEventRep'$1_Diem_BurnEvent'| (|e#$ToEventRep'$1_Diem_BurnEvent'| T@$1_Diem_BurnEvent) ) (|$ToEventRep'$1_Diem_CancelBurnEvent'| (|e#$ToEventRep'$1_Diem_CancelBurnEvent'| T@$1_Diem_CancelBurnEvent) ) (|$ToEventRep'$1_Diem_MintEvent'| (|e#$ToEventRep'$1_Diem_MintEvent'| T@$1_Diem_MintEvent) ) (|$ToEventRep'$1_Diem_PreburnEvent'| (|e#$ToEventRep'$1_Diem_PreburnEvent'| T@$1_Diem_PreburnEvent) ) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| (|e#$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| T@$1_DualAttestation_BaseUrlRotationEvent) ) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| (|e#$ToEventRep'$1_VASPDomain_VASPDomainEvent'| T@$1_VASPDomain_VASPDomainEvent) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_52020 0)) (((Multiset_52020 (|v#Multiset_52020| |T@[$EventRep]Int|) (|l#Multiset_52020| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_52020| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_52020|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_108601 0)) ((($Mutation_108601 (|l#$Mutation_108601| T@$Location) (|p#$Mutation_108601| (Seq Int)) (|v#$Mutation_108601| T@$1_DesignatedDealer_Dealer) ) ) ))
(declare-datatypes ((T@$Mutation_75530 0)) ((($Mutation_75530 (|l#$Mutation_75530| T@$Location) (|p#$Mutation_75530| (Seq Int)) (|v#$Mutation_75530| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_12279 0)) ((($Mutation_12279 (|l#$Mutation_12279| T@$Location) (|p#$Mutation_12279| (Seq Int)) (|v#$Mutation_12279| Int) ) ) ))
(declare-datatypes ((T@$Mutation_71014 0)) ((($Mutation_71014 (|l#$Mutation_71014| T@$Location) (|p#$Mutation_71014| (Seq Int)) (|v#$Mutation_71014| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_69724 0)) ((($Mutation_69724 (|l#$Mutation_69724| T@$Location) (|p#$Mutation_69724| (Seq Int)) (|v#$Mutation_69724| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_68978 0)) ((($Mutation_68978 (|l#$Mutation_68978| T@$Location) (|p#$Mutation_68978| (Seq Int)) (|v#$Mutation_68978| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((T@$Mutation_67574 0)) ((($Mutation_67574 (|l#$Mutation_67574| T@$Location) (|p#$Mutation_67574| (Seq Int)) (|v#$Mutation_67574| T@$1_VASPDomain_VASPDomain) ) ) ))
(declare-datatypes ((T@$Mutation_66828 0)) ((($Mutation_66828 (|l#$Mutation_66828| T@$Location) (|p#$Mutation_66828| (Seq Int)) (|v#$Mutation_66828| (Seq T@$1_VASPDomain_VASPDomain)) ) ) ))
(declare-datatypes ((T@$Mutation_65424 0)) ((($Mutation_65424 (|l#$Mutation_65424| T@$Location) (|p#$Mutation_65424| (Seq Int)) (|v#$Mutation_65424| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_64678 0)) ((($Mutation_64678 (|l#$Mutation_64678| T@$Location) (|p#$Mutation_64678| (Seq Int)) (|v#$Mutation_64678| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-datatypes ((T@$Mutation_63274 0)) ((($Mutation_63274 (|l#$Mutation_63274| T@$Location) (|p#$Mutation_63274| (Seq Int)) (|v#$Mutation_63274| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_62528 0)) ((($Mutation_62528 (|l#$Mutation_62528| T@$Location) (|p#$Mutation_62528| (Seq Int)) (|v#$Mutation_62528| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-datatypes ((T@$Mutation_61124 0)) ((($Mutation_61124 (|l#$Mutation_61124| T@$Location) (|p#$Mutation_61124| (Seq Int)) (|v#$Mutation_61124| |T@$1_Diem_PreburnWithMetadata'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_60378 0)) ((($Mutation_60378 (|l#$Mutation_60378| T@$Location) (|p#$Mutation_60378| (Seq Int)) (|v#$Mutation_60378| (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) ) ))
(declare-datatypes ((T@$Mutation_58974 0)) ((($Mutation_58974 (|l#$Mutation_58974| T@$Location) (|p#$Mutation_58974| (Seq Int)) (|v#$Mutation_58974| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_58228 0)) ((($Mutation_58228 (|l#$Mutation_58228| T@$Location) (|p#$Mutation_58228| (Seq Int)) (|v#$Mutation_58228| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((T@$Mutation_56824 0)) ((($Mutation_56824 (|l#$Mutation_56824| T@$Location) (|p#$Mutation_56824| (Seq Int)) (|v#$Mutation_56824| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_56078 0)) ((($Mutation_56078 (|l#$Mutation_56078| T@$Location) (|p#$Mutation_56078| (Seq Int)) (|v#$Mutation_56078| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$Mutation_54636 0)) ((($Mutation_54636 (|l#$Mutation_54636| T@$Location) (|p#$Mutation_54636| (Seq Int)) (|v#$Mutation_54636| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_53890 0)) ((($Mutation_53890 (|l#$Mutation_53890| T@$Location) (|p#$Mutation_53890| (Seq Int)) (|v#$Mutation_53890| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
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
(declare-fun |$IsValid'vec'address''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'address'| ((Seq Int) Int) Int)
(declare-fun |$IsValid'vec'u64''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u64'| ((Seq Int) Int) Int)
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_52020_| (|T@[$1_Event_EventHandle]Multiset_52020| T@$1_Event_EventHandle) T@Multiset_52020)
(declare-fun |Select__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep) Int)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (T@$1_Event_EventHandle) Bool)
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
(declare-fun |$IsValid'$1_FixedPoint32_FixedPoint32'| (T@$1_FixedPoint32_FixedPoint32) Bool)
(declare-fun |$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|T@$1_Diem_Diem'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|T@$1_Diem_Diem'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_Diem_Diem'#0''| (|T@$1_Diem_Diem'#0'|) Bool)
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
(declare-fun |$IsValid'$1_XUS_XUS'| (T@$1_XUS_XUS) Bool)
(declare-fun |$IsValid'$1_XDX_XDX'| (T@$1_XDX_XDX) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomainEvent'| (T@$1_VASPDomain_VASPDomainEvent) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomainManager'| (T@$1_VASPDomain_VASPDomainManager) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomains'| (T@$1_VASPDomain_VASPDomains) Bool)
(declare-fun |$IsValid'$1_VASP_ChildVASP'| (T@$1_VASP_ChildVASP) Bool)
(declare-fun |$IsValid'$1_VASP_ParentVASP'| (T@$1_VASP_ParentVASP) Bool)
(declare-fun |$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| (T@$1_DualAttestation_BaseUrlRotationEvent) Bool)
(declare-fun |$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| (T@$1_DualAttestation_ComplianceKeyRotationEvent) Bool)
(declare-fun |$IsValid'$1_DualAttestation_Credential'| (T@$1_DualAttestation_Credential) Bool)
(declare-fun |$IsValid'$1_DesignatedDealer_Dealer'| (T@$1_DesignatedDealer_Dealer) Bool)
(declare-fun |$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| (T@$1_DesignatedDealer_ReceivedMintEvent) Bool)
(declare-fun |$IsValid'$1_DesignatedDealer_TierInfo'$1_XUS_XUS''| (|T@$1_DesignatedDealer_TierInfo'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_DesignatedDealer_TierInfo'$1_XDX_XDX''| (|T@$1_DesignatedDealer_TierInfo'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_DesignatedDealer_TierInfo'#0''| (|T@$1_DesignatedDealer_TierInfo'#0'|) Bool)
(declare-fun |$IsValid'$1_DiemAccount_DiemAccount'| (T@$1_DiemAccount_DiemAccount) Bool)
(declare-fun |$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| (|T@$1_DiemAccount_Balance'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| (|T@$1_DiemAccount_Balance'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| (T@$1_DiemAccount_ReceivedPaymentEvent) Bool)
(declare-fun |$IsValid'$1_DiemAccount_SentPaymentEvent'| (T@$1_DiemAccount_SentPaymentEvent) Bool)
(declare-fun ReverseVec_12132 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_46853 ((Seq T@$1_ValidatorConfig_Config)) (Seq T@$1_ValidatorConfig_Config))
(declare-fun ReverseVec_45474 ((Seq T@$1_DiemAccount_KeyRotationCapability)) (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun ReverseVec_45671 ((Seq T@$1_DiemAccount_WithdrawCapability)) (Seq T@$1_DiemAccount_WithdrawCapability))
(declare-fun ReverseVec_45868 ((Seq T@$1_DiemSystem_ValidatorInfo)) (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun ReverseVec_46459 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|))
(declare-fun ReverseVec_46262 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|))
(declare-fun ReverseVec_46065 ((Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) (Seq |T@$1_Diem_PreburnWithMetadata'#0'|))
(declare-fun ReverseVec_46656 ((Seq T@$1_VASPDomain_VASPDomain)) (Seq T@$1_VASPDomain_VASPDomain))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_52020| |T@[$1_Event_EventHandle]Multiset_52020|) |T@[$1_Event_EventHandle]Multiset_52020|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |DesignatedDealerbpl.165:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |DesignatedDealerbpl.169:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |DesignatedDealerbpl.173:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |DesignatedDealerbpl.177:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |DesignatedDealerbpl.181:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |DesignatedDealerbpl.191:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |DesignatedDealerbpl.457:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |DesignatedDealerbpl.466:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (seq.nth v@@4 i@@0)))
 :qid |DesignatedDealerbpl.595:13|
 :skolemid |15|
))))
 :qid |DesignatedDealerbpl.593:62|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@4))
)))
(assert (forall ((v@@5 (Seq T@$1_DiemAccount_KeyRotationCapability)) (e T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@1 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |DesignatedDealerbpl.600:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |DesignatedDealerbpl.608:17|
 :skolemid |18|
)))))
 :qid |DesignatedDealerbpl.604:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (seq.nth v@@6 i@@3)))
 :qid |DesignatedDealerbpl.775:13|
 :skolemid |20|
))))
 :qid |DesignatedDealerbpl.773:59|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@6))
)))
(assert (forall ((v@@7 (Seq T@$1_DiemAccount_WithdrawCapability)) (e@@0 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@4 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |DesignatedDealerbpl.780:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |DesignatedDealerbpl.788:17|
 :skolemid |23|
)))))
 :qid |DesignatedDealerbpl.784:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (seq.nth v@@8 i@@6)))
 :qid |DesignatedDealerbpl.955:13|
 :skolemid |25|
))))
 :qid |DesignatedDealerbpl.953:53|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@8))
)))
(assert (forall ((v@@9 (Seq T@$1_DiemSystem_ValidatorInfo)) (e@@1 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@7 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |DesignatedDealerbpl.960:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |DesignatedDealerbpl.968:17|
 :skolemid |28|
)))))
 :qid |DesignatedDealerbpl.964:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| (seq.nth v@@10 i@@9)))
 :qid |DesignatedDealerbpl.1135:13|
 :skolemid |30|
))))
 :qid |DesignatedDealerbpl.1133:57|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@10))
)))
(assert (forall ((v@@11 (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) (e@@2 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (let ((i@@10 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |DesignatedDealerbpl.1140:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |DesignatedDealerbpl.1148:17|
 :skolemid |33|
)))))
 :qid |DesignatedDealerbpl.1144:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (seq.nth v@@12 i@@12)))
 :qid |DesignatedDealerbpl.1315:13|
 :skolemid |35|
))))
 :qid |DesignatedDealerbpl.1313:65|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12))
)))
(assert (forall ((v@@13 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (e@@3 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@13 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |DesignatedDealerbpl.1320:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |DesignatedDealerbpl.1328:17|
 :skolemid |38|
)))))
 :qid |DesignatedDealerbpl.1324:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (seq.nth v@@14 i@@15)))
 :qid |DesignatedDealerbpl.1495:13|
 :skolemid |40|
))))
 :qid |DesignatedDealerbpl.1493:65|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14))
)))
(assert (forall ((v@@15 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@16 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |DesignatedDealerbpl.1500:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |DesignatedDealerbpl.1508:17|
 :skolemid |43|
)))))
 :qid |DesignatedDealerbpl.1504:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq T@$1_VASPDomain_VASPDomain)) ) (! (= (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'$1_VASPDomain_VASPDomain'| (seq.nth v@@16 i@@18)))
 :qid |DesignatedDealerbpl.1675:13|
 :skolemid |45|
))))
 :qid |DesignatedDealerbpl.1673:50|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@16))
)))
(assert (forall ((v@@17 (Seq T@$1_VASPDomain_VASPDomain)) (e@@5 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@19 (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |DesignatedDealerbpl.1680:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |DesignatedDealerbpl.1688:17|
 :skolemid |48|
)))))
 :qid |DesignatedDealerbpl.1684:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@17 e@@5))
)))
(assert (forall ((v@@18 (Seq T@$1_ValidatorConfig_Config)) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@18)  (and (|$IsValid'u64'| (seq.len v@@18)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len v@@18))) (|$IsValid'$1_ValidatorConfig_Config'| (seq.nth v@@18 i@@21)))
 :qid |DesignatedDealerbpl.1855:13|
 :skolemid |50|
))))
 :qid |DesignatedDealerbpl.1853:51|
 :skolemid |51|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@18))
)))
(assert (forall ((v@@19 (Seq T@$1_ValidatorConfig_Config)) (e@@6 T@$1_ValidatorConfig_Config) ) (! (let ((i@@22 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@19 e@@6)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (and (>= i@@23 0) (< i@@23 (seq.len v@@19)))) (= (seq.nth v@@19 i@@23) e@@6))
 :qid |DesignatedDealerbpl.1860:13|
 :skolemid |52|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (and (>= i@@22 0) (< i@@22 (seq.len v@@19)))) (= (seq.nth v@@19 i@@22) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@22)) (not (= (seq.nth v@@19 j@@6) e@@6)))
 :qid |DesignatedDealerbpl.1868:17|
 :skolemid |53|
)))))
 :qid |DesignatedDealerbpl.1864:15|
 :skolemid |54|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@19 e@@6))
)))
(assert (forall ((v@@20 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@20)  (and (|$IsValid'u64'| (seq.len v@@20)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len v@@20))) (|$IsValid'address'| (seq.nth v@@20 i@@24)))
 :qid |DesignatedDealerbpl.2035:13|
 :skolemid |55|
))))
 :qid |DesignatedDealerbpl.2033:33|
 :skolemid |56|
 :pattern ( (|$IsValid'vec'address''| v@@20))
)))
(assert (forall ((v@@21 (Seq Int)) (e@@7 Int) ) (! (let ((i@@25 (|$IndexOfVec'address'| v@@21 e@@7)))
(ite  (not (exists ((i@@26 Int) ) (!  (and (and (|$IsValid'u64'| i@@26) (and (>= i@@26 0) (< i@@26 (seq.len v@@21)))) (= (seq.nth v@@21 i@@26) e@@7))
 :qid |DesignatedDealerbpl.2040:13|
 :skolemid |57|
))) (= i@@25 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@25) (and (>= i@@25 0) (< i@@25 (seq.len v@@21)))) (= (seq.nth v@@21 i@@25) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@25)) (not (= (seq.nth v@@21 j@@7) e@@7)))
 :qid |DesignatedDealerbpl.2048:17|
 :skolemid |58|
)))))
 :qid |DesignatedDealerbpl.2044:15|
 :skolemid |59|
 :pattern ( (|$IndexOfVec'address'| v@@21 e@@7))
)))
(assert (forall ((v@@22 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@22)  (and (|$IsValid'u64'| (seq.len v@@22)) (forall ((i@@27 Int) ) (!  (=> (and (>= i@@27 0) (< i@@27 (seq.len v@@22))) (|$IsValid'u64'| (seq.nth v@@22 i@@27)))
 :qid |DesignatedDealerbpl.2215:13|
 :skolemid |60|
))))
 :qid |DesignatedDealerbpl.2213:29|
 :skolemid |61|
 :pattern ( (|$IsValid'vec'u64''| v@@22))
)))
(assert (forall ((v@@23 (Seq Int)) (e@@8 Int) ) (! (let ((i@@28 (|$IndexOfVec'u64'| v@@23 e@@8)))
(ite  (not (exists ((i@@29 Int) ) (!  (and (and (|$IsValid'u64'| i@@29) (and (>= i@@29 0) (< i@@29 (seq.len v@@23)))) (= (seq.nth v@@23 i@@29) e@@8))
 :qid |DesignatedDealerbpl.2220:13|
 :skolemid |62|
))) (= i@@28 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@28) (and (>= i@@28 0) (< i@@28 (seq.len v@@23)))) (= (seq.nth v@@23 i@@28) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@28)) (not (= (seq.nth v@@23 j@@8) e@@8)))
 :qid |DesignatedDealerbpl.2228:17|
 :skolemid |63|
)))))
 :qid |DesignatedDealerbpl.2224:15|
 :skolemid |64|
 :pattern ( (|$IndexOfVec'u64'| v@@23 e@@8))
)))
(assert (forall ((v@@24 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@24)  (and (|$IsValid'u64'| (seq.len v@@24)) (forall ((i@@30 Int) ) (!  (=> (and (>= i@@30 0) (< i@@30 (seq.len v@@24))) (|$IsValid'u8'| (seq.nth v@@24 i@@30)))
 :qid |DesignatedDealerbpl.2395:13|
 :skolemid |65|
))))
 :qid |DesignatedDealerbpl.2393:28|
 :skolemid |66|
 :pattern ( (|$IsValid'vec'u8''| v@@24))
)))
(assert (forall ((v@@25 (Seq Int)) (e@@9 Int) ) (! (let ((i@@31 (|$IndexOfVec'u8'| v@@25 e@@9)))
(ite  (not (exists ((i@@32 Int) ) (!  (and (and (|$IsValid'u64'| i@@32) (and (>= i@@32 0) (< i@@32 (seq.len v@@25)))) (= (seq.nth v@@25 i@@32) e@@9))
 :qid |DesignatedDealerbpl.2400:13|
 :skolemid |67|
))) (= i@@31 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@31) (and (>= i@@31 0) (< i@@31 (seq.len v@@25)))) (= (seq.nth v@@25 i@@31) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@9) (>= j@@9 0)) (< j@@9 i@@31)) (not (= (seq.nth v@@25 j@@9) e@@9)))
 :qid |DesignatedDealerbpl.2408:17|
 :skolemid |68|
)))))
 :qid |DesignatedDealerbpl.2404:15|
 :skolemid |69|
 :pattern ( (|$IndexOfVec'u8'| v@@25 e@@9))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |DesignatedDealerbpl.2581:15|
 :skolemid |70|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |DesignatedDealerbpl.2597:15|
 :skolemid |71|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |DesignatedDealerbpl.2668:15|
 :skolemid |72|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |DesignatedDealerbpl.2671:15|
 :skolemid |73|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_52020_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_52020| stream) 0) (forall ((v@@26 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_52020| stream) v@@26) 0)
 :qid |DesignatedDealerbpl.134:13|
 :skolemid |2|
))))
 :qid |DesignatedDealerbpl.2732:13|
 :skolemid |74|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h) true)
 :qid |DesignatedDealerbpl.2773:80|
 :skolemid |76|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h))
)))
(assert (forall ((v1@@1 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@1 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (= v1@@1 v2@@1) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@1) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@1)))
 :qid |DesignatedDealerbpl.2779:15|
 :skolemid |77|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@1) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@1))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@0) true)
 :qid |DesignatedDealerbpl.2829:78|
 :skolemid |78|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@0))
)))
(assert (forall ((v1@@2 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@2 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (= v1@@2 v2@@2) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@2) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@2)))
 :qid |DesignatedDealerbpl.2835:15|
 :skolemid |79|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@2) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@2))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@1) true)
 :qid |DesignatedDealerbpl.2885:74|
 :skolemid |80|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@1))
)))
(assert (forall ((v1@@3 T@$1_DiemAccount_SentPaymentEvent) (v2@@3 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@3) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@3)))
 :qid |DesignatedDealerbpl.2891:15|
 :skolemid |81|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@3) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@3))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@2) true)
 :qid |DesignatedDealerbpl.2941:60|
 :skolemid |82|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@2))
)))
(assert (forall ((v1@@4 T@$1_Diem_BurnEvent) (v2@@4 T@$1_Diem_BurnEvent) ) (! (= (= v1@@4 v2@@4) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@4) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@4)))
 :qid |DesignatedDealerbpl.2947:15|
 :skolemid |83|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@4) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@4))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@3) true)
 :qid |DesignatedDealerbpl.2997:66|
 :skolemid |84|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@3))
)))
(assert (forall ((v1@@5 T@$1_Diem_CancelBurnEvent) (v2@@5 T@$1_Diem_CancelBurnEvent) ) (! (= (= v1@@5 v2@@5) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@5) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@5)))
 :qid |DesignatedDealerbpl.3003:15|
 :skolemid |85|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@5) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@5))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@4) true)
 :qid |DesignatedDealerbpl.3053:60|
 :skolemid |86|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@4))
)))
(assert (forall ((v1@@6 T@$1_Diem_MintEvent) (v2@@6 T@$1_Diem_MintEvent) ) (! (= (= v1@@6 v2@@6) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@6) (|$ToEventRep'$1_Diem_MintEvent'| v2@@6)))
 :qid |DesignatedDealerbpl.3059:15|
 :skolemid |87|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@6) (|$ToEventRep'$1_Diem_MintEvent'| v2@@6))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@5) true)
 :qid |DesignatedDealerbpl.3109:63|
 :skolemid |88|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@5))
)))
(assert (forall ((v1@@7 T@$1_Diem_PreburnEvent) (v2@@7 T@$1_Diem_PreburnEvent) ) (! (= (= v1@@7 v2@@7) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@7) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@7)))
 :qid |DesignatedDealerbpl.3115:15|
 :skolemid |89|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@7) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@7))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@6) true)
 :qid |DesignatedDealerbpl.3165:79|
 :skolemid |90|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@6))
)))
(assert (forall ((v1@@8 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@8 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (= v1@@8 v2@@8) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@8) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@8)))
 :qid |DesignatedDealerbpl.3171:15|
 :skolemid |91|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@8) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@8))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@7) true)
 :qid |DesignatedDealerbpl.3221:82|
 :skolemid |92|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@7))
)))
(assert (forall ((v1@@9 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@9 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (= v1@@9 v2@@9) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@9) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@9)))
 :qid |DesignatedDealerbpl.3227:15|
 :skolemid |93|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@9) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@9))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@8) true)
 :qid |DesignatedDealerbpl.3277:88|
 :skolemid |94|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@8))
)))
(assert (forall ((v1@@10 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@10 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@10) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@10)))
 :qid |DesignatedDealerbpl.3283:15|
 :skolemid |95|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@10) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@10))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@9) true)
 :qid |DesignatedDealerbpl.3333:72|
 :skolemid |96|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@9))
)))
(assert (forall ((v1@@11 T@$1_VASPDomain_VASPDomainEvent) (v2@@11 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (= v1@@11 v2@@11) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@11) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@11)))
 :qid |DesignatedDealerbpl.3339:15|
 :skolemid |97|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@11) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@11))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |DesignatedDealerbpl.3403:61|
 :skolemid |98|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |DesignatedDealerbpl.3462:36|
 :skolemid |99|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |DesignatedDealerbpl.3481:71|
 :skolemid |100|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@2) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@2)))
 :qid |DesignatedDealerbpl.3505:46|
 :skolemid |101|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@3)))
 :qid |DesignatedDealerbpl.3518:64|
 :skolemid |102|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@4)))
 :qid |DesignatedDealerbpl.3531:75|
 :skolemid |103|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@5)))
 :qid |DesignatedDealerbpl.3544:72|
 :skolemid |104|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5))
)))
(assert (forall ((s@@6 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@6)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@6))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@6))))
 :qid |DesignatedDealerbpl.3573:55|
 :skolemid |105|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@7)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@7)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@7))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@7))))
 :qid |DesignatedDealerbpl.3595:46|
 :skolemid |106|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@7))
)))
(assert (forall ((s@@8 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@8)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@8))))
 :qid |DesignatedDealerbpl.3613:49|
 :skolemid |107|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8))
)))
(assert (forall ((s@@9 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@9)))
 :qid |DesignatedDealerbpl.3633:71|
 :skolemid |108|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9))
)))
(assert (forall ((s@@10 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@10)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@10)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@10))))
 :qid |DesignatedDealerbpl.3655:45|
 :skolemid |109|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@10))
)))
(assert (forall ((s@@11 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@11)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@11)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@11))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@11))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@11))))
 :qid |DesignatedDealerbpl.3678:48|
 :skolemid |110|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@11))
)))
(assert (forall ((s@@12 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@12) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@12)))
 :qid |DesignatedDealerbpl.3694:49|
 :skolemid |111|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@12))
)))
(assert (forall ((s@@13 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@13) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@13)))
 :qid |DesignatedDealerbpl.3812:45|
 :skolemid |112|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@14) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@14)))
 :qid |DesignatedDealerbpl.3825:45|
 :skolemid |113|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@14))
)))
(assert (forall ((s@@15 |T@$1_Diem_Diem'#0'|) ) (! (= (|$IsValid'$1_Diem_Diem'#0''| s@@15) (|$IsValid'u64'| (|$value#$1_Diem_Diem'#0'| s@@15)))
 :qid |DesignatedDealerbpl.3838:37|
 :skolemid |114|
 :pattern ( (|$IsValid'$1_Diem_Diem'#0''| s@@15))
)))
(assert (forall ((s@@16 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@16)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@16)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@16))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@16))))
 :qid |DesignatedDealerbpl.3857:38|
 :skolemid |115|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@16))
)))
(assert (forall ((s@@17 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@17)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@17)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@17))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@17))))
 :qid |DesignatedDealerbpl.3878:44|
 :skolemid |116|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@17))
)))
(assert (forall ((s@@18 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@18)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@18)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@18))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@18))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@18))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@18))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@18))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@18))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@18))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@18))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@18))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@18))))
 :qid |DesignatedDealerbpl.3929:53|
 :skolemid |117|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@19)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@19)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@19))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@19))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@19))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@19))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@19))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@19))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@19))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@19))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@19))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@19))))
 :qid |DesignatedDealerbpl.3991:53|
 :skolemid |118|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_Diem_CurrencyInfo'#0'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@20)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'#0'| s@@20)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'#0'| s@@20))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| s@@20))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| s@@20))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'#0'| s@@20))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'#0'| s@@20))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'#0'| s@@20))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'#0'| s@@20))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'#0'| s@@20))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| s@@20))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| s@@20))))
 :qid |DesignatedDealerbpl.4053:45|
 :skolemid |119|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@20))
)))
(assert (forall ((s@@21 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@21) true)
 :qid |DesignatedDealerbpl.4079:55|
 :skolemid |120|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@21))
)))
(assert (forall ((s@@22 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@22) true)
 :qid |DesignatedDealerbpl.4093:55|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@22))
)))
(assert (forall ((s@@23 |T@$1_Diem_MintCapability'#0'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'#0''| s@@23) true)
 :qid |DesignatedDealerbpl.4107:47|
 :skolemid |122|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'#0''| s@@23))
)))
(assert (forall ((s@@24 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@24)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@24)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@24))))
 :qid |DesignatedDealerbpl.4124:38|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@24))
)))
(assert (forall ((s@@25 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@25) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@25)))
 :qid |DesignatedDealerbpl.4138:48|
 :skolemid |124|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@25))
)))
(assert (forall ((s@@26 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@26) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@26)))
 :qid |DesignatedDealerbpl.4152:48|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@26))
)))
(assert (forall ((s@@27 |T@$1_Diem_Preburn'#0'|) ) (! (= (|$IsValid'$1_Diem_Preburn'#0''| s@@27) (|$IsValid'$1_Diem_Diem'#0''| (|$to_burn#$1_Diem_Preburn'#0'| s@@27)))
 :qid |DesignatedDealerbpl.4166:40|
 :skolemid |126|
 :pattern ( (|$IsValid'$1_Diem_Preburn'#0''| s@@27))
)))
(assert (forall ((s@@28 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@28)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@28)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@28))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@28))))
 :qid |DesignatedDealerbpl.4186:41|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@29) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@29)))
 :qid |DesignatedDealerbpl.4201:53|
 :skolemid |128|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@30) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@30)))
 :qid |DesignatedDealerbpl.4215:53|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_PreburnQueue'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@31) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| (|$preburns#$1_Diem_PreburnQueue'#0'| s@@31)))
 :qid |DesignatedDealerbpl.4229:45|
 :skolemid |130|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@32)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@32)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@32))))
 :qid |DesignatedDealerbpl.4246:60|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@32))
)))
(assert (forall ((s@@33 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@33)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@33)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@33))))
 :qid |DesignatedDealerbpl.4263:60|
 :skolemid |132|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@33))
)))
(assert (forall ((s@@34 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@34)  (and (|$IsValid'$1_Diem_Preburn'#0''| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| s@@34)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| s@@34))))
 :qid |DesignatedDealerbpl.4280:52|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@34))
)))
(assert (forall ((s@@35 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@35)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@35)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@35))))
 :qid |DesignatedDealerbpl.4297:57|
 :skolemid |134|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@35))
)))
(assert (forall ((s@@36 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@36) true)
 :qid |DesignatedDealerbpl.4992:31|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@36))
)))
(assert (forall ((s@@37 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@37) true)
 :qid |DesignatedDealerbpl.5005:31|
 :skolemid |136|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@37))
)))
(assert (forall ((s@@38 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@38) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@38)))
 :qid |DesignatedDealerbpl.5018:45|
 :skolemid |137|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@38))
)))
(assert (forall ((s@@39 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@39)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@39))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@39))))
 :qid |DesignatedDealerbpl.5037:50|
 :skolemid |138|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@39))
)))
(assert (forall ((s@@40 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@40) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@40)))
 :qid |DesignatedDealerbpl.5052:52|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@40))
)))
(assert (forall ((s@@41 T@$1_VASPDomain_VASPDomains) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomains'| s@@41) (|$IsValid'vec'$1_VASPDomain_VASPDomain''| (|$domains#$1_VASPDomain_VASPDomains| s@@41)))
 :qid |DesignatedDealerbpl.5066:46|
 :skolemid |140|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomains'| s@@41))
)))
(assert (forall ((s@@42 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@42) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@42)))
 :qid |DesignatedDealerbpl.5090:38|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@42))
)))
(assert (forall ((s@@43 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@43) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@43)))
 :qid |DesignatedDealerbpl.5104:39|
 :skolemid |142|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@43))
)))
(assert (forall ((s@@44 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@44)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@44)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@44))))
 :qid |DesignatedDealerbpl.5126:60|
 :skolemid |143|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@44))
)))
(assert (forall ((s@@45 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@45)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@45)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@45))))
 :qid |DesignatedDealerbpl.5143:66|
 :skolemid |144|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@45))
)))
(assert (forall ((s@@46 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@46)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@46)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@46))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@46))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@46))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@46))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@46))))
 :qid |DesignatedDealerbpl.5172:50|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@46))
)))
(assert (forall ((s@@47 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@47) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@47)))
 :qid |DesignatedDealerbpl.5191:47|
 :skolemid |146|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@47))
)))
(assert (forall ((s@@48 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@48)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@48)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@48))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@48))))
 :qid |DesignatedDealerbpl.5211:58|
 :skolemid |147|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@48))
)))
(assert (forall ((s@@49 |T@$1_DesignatedDealer_TierInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DesignatedDealer_TierInfo'$1_XUS_XUS''| s@@49)  (and (and (|$IsValid'u64'| (|$window_start#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| s@@49)) (|$IsValid'u64'| (|$window_inflow#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| s@@49))) (|$IsValid'vec'u64''| (|$tiers#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| s@@49))))
 :qid |DesignatedDealerbpl.5232:61|
 :skolemid |148|
 :pattern ( (|$IsValid'$1_DesignatedDealer_TierInfo'$1_XUS_XUS''| s@@49))
)))
(assert (forall ((s@@50 |T@$1_DesignatedDealer_TierInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DesignatedDealer_TierInfo'$1_XDX_XDX''| s@@50)  (and (and (|$IsValid'u64'| (|$window_start#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| s@@50)) (|$IsValid'u64'| (|$window_inflow#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| s@@50))) (|$IsValid'vec'u64''| (|$tiers#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| s@@50))))
 :qid |DesignatedDealerbpl.5254:61|
 :skolemid |149|
 :pattern ( (|$IsValid'$1_DesignatedDealer_TierInfo'$1_XDX_XDX''| s@@50))
)))
(assert (forall ((s@@51 |T@$1_DesignatedDealer_TierInfo'#0'|) ) (! (= (|$IsValid'$1_DesignatedDealer_TierInfo'#0''| s@@51)  (and (and (|$IsValid'u64'| (|$window_start#$1_DesignatedDealer_TierInfo'#0'| s@@51)) (|$IsValid'u64'| (|$window_inflow#$1_DesignatedDealer_TierInfo'#0'| s@@51))) (|$IsValid'vec'u64''| (|$tiers#$1_DesignatedDealer_TierInfo'#0'| s@@51))))
 :qid |DesignatedDealerbpl.5276:53|
 :skolemid |150|
 :pattern ( (|$IsValid'$1_DesignatedDealer_TierInfo'#0''| s@@51))
)))
(assert (forall ((s@@52 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@52)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@52)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@52))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@52))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@52))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@52))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@52))))
 :qid |DesignatedDealerbpl.9340:47|
 :skolemid |436|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@52))
)))
(assert (forall ((s@@53 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@53) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@53)))
 :qid |DesignatedDealerbpl.9359:55|
 :skolemid |437|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@53))
)))
(assert (forall ((s@@54 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@54) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@54)))
 :qid |DesignatedDealerbpl.9373:55|
 :skolemid |438|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@54))
)))
(assert (forall ((s@@55 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@55) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@55)))
 :qid |DesignatedDealerbpl.9387:57|
 :skolemid |439|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@55))
)))
(assert (forall ((s@@56 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@56)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@56)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@56))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@56))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@56))))
 :qid |DesignatedDealerbpl.9409:56|
 :skolemid |440|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@56))
)))
(assert (forall ((s@@57 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@57)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@57)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@57))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@57))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@57))))
 :qid |DesignatedDealerbpl.9434:52|
 :skolemid |441|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@57))
)))
(assert (forall ((s@@58 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@58) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@58)))
 :qid |DesignatedDealerbpl.9450:54|
 :skolemid |442|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@58))
)))
(assert (forall ((v@@27 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_12132 v@@27)))
 (and (= (seq.len r@@0) (seq.len v@@27)) (forall ((i@@33 Int) ) (!  (=> (and (>= i@@33 0) (< i@@33 (seq.len r@@0))) (= (seq.nth r@@0 i@@33) (seq.nth v@@27 (- (- (seq.len v@@27) i@@33) 1))))
 :qid |DesignatedDealerbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@33))
))))
 :qid |DesignatedDealerbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_12132 v@@27))
)))
(assert (forall ((v@@28 (Seq T@$1_ValidatorConfig_Config)) ) (! (let ((r@@1 (ReverseVec_46853 v@@28)))
 (and (= (seq.len r@@1) (seq.len v@@28)) (forall ((i@@34 Int) ) (!  (=> (and (>= i@@34 0) (< i@@34 (seq.len r@@1))) (= (seq.nth r@@1 i@@34) (seq.nth v@@28 (- (- (seq.len v@@28) i@@34) 1))))
 :qid |DesignatedDealerbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@34))
))))
 :qid |DesignatedDealerbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_46853 v@@28))
)))
(assert (forall ((v@@29 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (let ((r@@2 (ReverseVec_45474 v@@29)))
 (and (= (seq.len r@@2) (seq.len v@@29)) (forall ((i@@35 Int) ) (!  (=> (and (>= i@@35 0) (< i@@35 (seq.len r@@2))) (= (seq.nth r@@2 i@@35) (seq.nth v@@29 (- (- (seq.len v@@29) i@@35) 1))))
 :qid |DesignatedDealerbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@2 i@@35))
))))
 :qid |DesignatedDealerbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_45474 v@@29))
)))
(assert (forall ((v@@30 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (let ((r@@3 (ReverseVec_45671 v@@30)))
 (and (= (seq.len r@@3) (seq.len v@@30)) (forall ((i@@36 Int) ) (!  (=> (and (>= i@@36 0) (< i@@36 (seq.len r@@3))) (= (seq.nth r@@3 i@@36) (seq.nth v@@30 (- (- (seq.len v@@30) i@@36) 1))))
 :qid |DesignatedDealerbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@36))
))))
 :qid |DesignatedDealerbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_45671 v@@30))
)))
(assert (forall ((v@@31 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (let ((r@@4 (ReverseVec_45868 v@@31)))
 (and (= (seq.len r@@4) (seq.len v@@31)) (forall ((i@@37 Int) ) (!  (=> (and (>= i@@37 0) (< i@@37 (seq.len r@@4))) (= (seq.nth r@@4 i@@37) (seq.nth v@@31 (- (- (seq.len v@@31) i@@37) 1))))
 :qid |DesignatedDealerbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@37))
))))
 :qid |DesignatedDealerbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_45868 v@@31))
)))
(assert (forall ((v@@32 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (let ((r@@5 (ReverseVec_46459 v@@32)))
 (and (= (seq.len r@@5) (seq.len v@@32)) (forall ((i@@38 Int) ) (!  (=> (and (>= i@@38 0) (< i@@38 (seq.len r@@5))) (= (seq.nth r@@5 i@@38) (seq.nth v@@32 (- (- (seq.len v@@32) i@@38) 1))))
 :qid |DesignatedDealerbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@38))
))))
 :qid |DesignatedDealerbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_46459 v@@32))
)))
(assert (forall ((v@@33 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (let ((r@@6 (ReverseVec_46262 v@@33)))
 (and (= (seq.len r@@6) (seq.len v@@33)) (forall ((i@@39 Int) ) (!  (=> (and (>= i@@39 0) (< i@@39 (seq.len r@@6))) (= (seq.nth r@@6 i@@39) (seq.nth v@@33 (- (- (seq.len v@@33) i@@39) 1))))
 :qid |DesignatedDealerbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@39))
))))
 :qid |DesignatedDealerbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_46262 v@@33))
)))
(assert (forall ((v@@34 (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) (! (let ((r@@7 (ReverseVec_46065 v@@34)))
 (and (= (seq.len r@@7) (seq.len v@@34)) (forall ((i@@40 Int) ) (!  (=> (and (>= i@@40 0) (< i@@40 (seq.len r@@7))) (= (seq.nth r@@7 i@@40) (seq.nth v@@34 (- (- (seq.len v@@34) i@@40) 1))))
 :qid |DesignatedDealerbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@7 i@@40))
))))
 :qid |DesignatedDealerbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_46065 v@@34))
)))
(assert (forall ((v@@35 (Seq T@$1_VASPDomain_VASPDomain)) ) (! (let ((r@@8 (ReverseVec_46656 v@@35)))
 (and (= (seq.len r@@8) (seq.len v@@35)) (forall ((i@@41 Int) ) (!  (=> (and (>= i@@41 0) (< i@@41 (seq.len r@@8))) (= (seq.nth r@@8 i@@41) (seq.nth v@@35 (- (- (seq.len v@@35) i@@41) 1))))
 :qid |DesignatedDealerbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@8 i@@41))
))))
 :qid |DesignatedDealerbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_46656 v@@35))
)))
(assert (forall ((|l#0| Bool) (i@@42 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@42) |l#0|)
 :qid |DesignatedDealerbpl.250:54|
 :skolemid |443|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@42))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_52020|) (|l#1| |T@[$1_Event_EventHandle]Multiset_52020|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_52020_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_52020| (|Select__T@[$1_Event_EventHandle]Multiset_52020_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_52020| (|Select__T@[$1_Event_EventHandle]Multiset_52020_| |l#1| handle@@0))))
(Multiset_52020 (|lambda#3| (|v#Multiset_52020| (|Select__T@[$1_Event_EventHandle]Multiset_52020_| |l#0@@0| handle@@0)) (|v#Multiset_52020| (|Select__T@[$1_Event_EventHandle]Multiset_52020_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |DesignatedDealerbpl.2742:13|
 :skolemid |444|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_52020_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@36 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@36) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@36) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@36)))
 :qid |DesignatedDealerbpl.129:29|
 :skolemid |445|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@36))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |$1_Diem_PreburnQueue'#0'_$memory@2| () T@$Memory_87905)
(declare-fun $t18 () Int)
(declare-fun |$1_Diem_Preburn'#0'_$memory| () T@$Memory_87480)
(declare-fun |Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|T@[Int]$1_Diem_PreburnQueue'#0'| Int) |T@$1_Diem_PreburnQueue'#0'|)
(declare-fun $t15 () Int)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_79648)
(declare-fun $t6 () Int)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun _$t1 () T@$signer)
(declare-fun $t7 () Int)
(declare-fun $1_DesignatedDealer_Dealer_$memory () T@$Memory_92161)
(declare-fun $t5 () Int)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory| () T@$Memory_81686)
(declare-fun |Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|T@[Int]$1_Diem_CurrencyInfo'#0'| Int) |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun |$1_Diem_PreburnQueue'#0'_$memory| () T@$Memory_87905)
(declare-fun |$temp_0'bool'@0| () Bool)
(declare-fun |$1_Diem_PreburnQueue'#0'_$memory@1| () T@$Memory_87905)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |$1_Diem_PreburnQueue'#0'_$memory@0| () T@$Memory_87905)
(declare-fun |Store__T@[Int]$1_Diem_PreburnQueue'#0'_| (|T@[Int]$1_Diem_PreburnQueue'#0'| Int |T@$1_Diem_PreburnQueue'#0'|) |T@[Int]$1_Diem_PreburnQueue'#0'|)
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_PreburnQueue'#0'|) ( ?x1 Int) ( ?x2 |T@$1_Diem_PreburnQueue'#0'|)) (! (= (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|Store__T@[Int]$1_Diem_PreburnQueue'#0'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_PreburnQueue'#0'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_Diem_PreburnQueue'#0'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|Store__T@[Int]$1_Diem_PreburnQueue'#0'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_Diem_PreburnQueue'#0''@0| () |T@$1_Diem_PreburnQueue'#0'|)
(declare-fun $t21 () Bool)
(declare-fun $t10@0 () Int)
(declare-fun $t16 () Int)
(declare-fun $t10 () Int)
(declare-fun $t17 () Int)
(declare-fun $t19 () Int)
(declare-fun $t12 () Bool)
(declare-fun _$t0 () T@$signer)
(declare-fun $t20 () Int)
(declare-fun |$1_Diem_PreburnQueue'#0'_$modifies| () |T@[Int]Bool|)
(declare-fun $t14 () Int)
(declare-fun $t9 () Bool)
(declare-fun $t11 () Int)
(declare-fun $t8 () Int)
(declare-fun $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory () T@$Memory_79975)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory () T@$Memory_80391)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|T@[Int]$1_ValidatorConfig_ValidatorConfig| Int) T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun |$1_Diem_MintCapability'#0'_$memory| () T@$Memory_82212)
(declare-fun |Select__T@[Int]$1_Diem_Preburn'#0'_| (|T@[Int]$1_Diem_Preburn'#0'| Int) |T@$1_Diem_Preburn'#0'|)
(declare-fun $1_DualAttestation_Credential_$memory () T@$Memory_91467)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory| () T@$Memory_93760)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory| () T@$Memory_93820)
(declare-fun $1_Signer_is_txn_signer (T@$signer) Bool)
(declare-fun $1_Signer_is_txn_signer_addr (Int) Bool)
(declare-fun |Select__T@[Int]$1_DesignatedDealer_Dealer_| (|T@[Int]$1_DesignatedDealer_Dealer| Int) T@$1_DesignatedDealer_Dealer)
(declare-fun $es () T@$EventStore)
; Valid
; Valid
; Valid
; Valid
(declare-fun _$t0@@0 () Int)
(declare-fun $t1@0 () Bool)
; Valid
(declare-fun $t6@@0 () Int)
(declare-fun _$t1@@0 () T@$signer)
(declare-fun $t7@@0 () Int)
(declare-fun $t5@@0 () Int)
(declare-fun _$t2 () Bool)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory| () T@$Memory_81448)
(declare-fun |Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory| () T@$Memory_87707)
(declare-fun |$1_Diem_Preburn'$1_XUS_XUS'_$memory| () T@$Memory_87298)
(declare-fun $1_DesignatedDealer_Dealer_$memory@1 () T@$Memory_92161)
(declare-fun |$temp_0'bool'@1| () Bool)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@1| () T@$Memory_87707)
(declare-fun $t20@@0 () Int)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@0| () T@$Memory_87707)
(declare-fun |Store__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| Int |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|)
(declare-fun |Select__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| Int) |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|)
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ( ?x1 Int) ( ?x2 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|)) (! (= (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|Store__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|Store__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_Diem_PreburnQueue'$1_XUS_XUS''@0| () |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|)
(declare-fun $t23 () Bool)
(declare-fun |$temp_0'bool'@0@@0| () Bool)
(declare-fun |$1_Diem_PreburnQueue'#0'_$memory@1@@0| () T@$Memory_87905)
(declare-fun $t24 () Int)
(declare-fun |$1_Diem_PreburnQueue'#0'_$memory@0@@0| () T@$Memory_87905)
(declare-fun |$temp_0'$1_Diem_PreburnQueue'#0''@0@@0| () |T@$1_Diem_PreburnQueue'#0'|)
(declare-fun $t27 () Bool)
(declare-fun $t10@0@@0 () Int)
(declare-fun $t21@@0 () Int)
(declare-fun $t10@@0 () Int)
(declare-fun $t22 () Int)
(declare-fun _$t0@@1 () T@$signer)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$modifies| () |T@[Int]Bool|)
(declare-fun $t25 () Int)
(declare-fun $t26 () Int)
(declare-fun |$1_Diem_PreburnQueue'#0'_$modifies@@0| () |T@[Int]Bool|)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun $1_DesignatedDealer_Dealer_$memory@0 () T@$Memory_92161)
(declare-fun |Store__T@[Int]$1_DesignatedDealer_Dealer_| (|T@[Int]$1_DesignatedDealer_Dealer| Int T@$1_DesignatedDealer_Dealer) |T@[Int]$1_DesignatedDealer_Dealer|)
(assert (forall ( ( ?x0 |T@[Int]$1_DesignatedDealer_Dealer|) ( ?x1 Int) ( ?x2 T@$1_DesignatedDealer_Dealer)) (! (= (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|Store__T@[Int]$1_DesignatedDealer_Dealer_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DesignatedDealer_Dealer|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DesignatedDealer_Dealer)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|Store__T@[Int]$1_DesignatedDealer_Dealer_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DesignatedDealer_Dealer_| ?x0 ?y1))) :weight 0)))
(declare-fun $t19@0 () T@$1_DesignatedDealer_Dealer)
(declare-fun $abort_code@0 () Int)
(declare-fun |inline$$1_Event_new_event_handle'$1_DesignatedDealer_ReceivedMintEvent'$0$res@0| () T@$1_Event_EventHandle)
(declare-fun $1_DesignatedDealer_Dealer_$modifies () |T@[Int]Bool|)
(declare-sort |T@[$1_Event_EventHandle]Bool| 0)
(declare-fun |Select__T@[$1_Event_EventHandle]Bool_| (|T@[$1_Event_EventHandle]Bool| T@$1_Event_EventHandle) Bool)
(declare-fun $1_Event_EventHandles () |T@[$1_Event_EventHandle]Bool|)
(declare-fun $1_Event_EventHandles@0 () |T@[$1_Event_EventHandle]Bool|)
(declare-fun |Store__T@[$1_Event_EventHandle]Bool_| (|T@[$1_Event_EventHandle]Bool| T@$1_Event_EventHandle Bool) |T@[$1_Event_EventHandle]Bool|)
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Bool|) ( ?x1 T@$1_Event_EventHandle) ( ?x2 Bool)) (! (= (|Select__T@[$1_Event_EventHandle]Bool_| (|Store__T@[$1_Event_EventHandle]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Bool|) ( ?x1 T@$1_Event_EventHandle) ( ?y1 T@$1_Event_EventHandle) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$1_Event_EventHandle]Bool_| (|Store__T@[$1_Event_EventHandle]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$1_Event_EventHandle]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun $t17@@0 () Int)
(declare-fun $t14@0 () Bool)
(declare-fun $t12@@0 () Bool)
(declare-fun $t13 () Int)
(declare-fun $t11@@0 () Int)
(declare-fun $t9@@0 () Bool)
(declare-fun $t8@@0 () Int)
(declare-fun |$1_Diem_MintCapability'$1_XUS_XUS'_$memory| () T@$Memory_82084)
(declare-fun |Select__T@[Int]$1_Diem_Preburn'$1_XUS_XUS'_| (|T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| Int) |T@$1_Diem_Preburn'$1_XUS_XUS'|)
(declare-fun $1_Event_EventHandleGenerator_$modifies () |T@[Int]Bool|)
; Valid
(declare-fun $abort_flag@4 () Bool)
(declare-fun |inline$$1_Diem_mint'#0'$0$$ret0@1| () |T@$1_Diem_Diem'#0'|)
(declare-fun $t37 () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory@3| () T@$Memory_81686)
(declare-fun _$t1@@1 () Int)
(declare-fun _$t0@@2 () T@$signer)
(declare-fun $t9@@1 () Int)
(declare-fun _$t2@@0 () Int)
(declare-fun |$1_DesignatedDealer_TierInfo'#0'_$memory@2| () T@$Memory_92802)
(declare-fun $t8@@1 () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun $es@2 () T@$EventStore)
(declare-fun $t10@@1 () T@$1_Event_EventHandle)
(declare-fun $t11@@1 () T@$1_DesignatedDealer_ReceivedMintEvent)
(declare-fun |Store__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep Int) |T@[$EventRep]Int|)
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?x2 Int)) (! (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?y1 T@$EventRep) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$EventRep]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[$1_Event_EventHandle]Multiset_52020_| (|T@[$1_Event_EventHandle]Multiset_52020| T@$1_Event_EventHandle T@Multiset_52020) |T@[$1_Event_EventHandle]Multiset_52020|)
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_52020|) ( ?x1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_52020)) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_52020_| (|Store__T@[$1_Event_EventHandle]Multiset_52020_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_52020|) ( ?x1 T@$1_Event_EventHandle) ( ?y1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_52020)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$1_Event_EventHandle]Multiset_52020_| (|Store__T@[$1_Event_EventHandle]Multiset_52020_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$1_Event_EventHandle]Multiset_52020_| ?x0 ?y1))) :weight 0)))
(declare-fun $t12@@1 () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun $t13@@0 () T@$1_Event_EventHandle)
(declare-fun $t14@@0 () T@$1_Diem_MintEvent)
(declare-fun $t17@0 () Int)
(declare-fun $abort_flag@0@@0 () Bool)
(declare-fun $abort_code@1@@0 () Int)
(declare-fun $abort_code@5 () Int)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t16@0| () |T@$1_Diem_Diem'#0'|)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t18@0| () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory@2| () T@$Memory_81686)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t12@0| () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t19@0| () T@$1_Diem_MintEvent)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t15@0| () T@$1_Diem_MintEvent)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t20@0| () T@$1_Event_EventHandle)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t14@0| () T@$1_Event_EventHandle)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t21@0| () Bool)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t13@0| () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun $es@1 () T@$EventStore)
(declare-fun $es@0 () T@$EventStore)
(declare-fun $abort_code@4 () Int)
(declare-fun $abort_flag@3 () Bool)
(declare-fun |inline$$1_Diem_mint'#0'$0$$temp_0'bool'@1| () Bool)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory@1| () T@$Memory_81686)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory@0| () T@$Memory_81686)
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
(declare-fun $abort_flag@2 () Bool)
(declare-fun $abort_code@3 () Int)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t7@1| () Bool)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t9@0| () Int)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t5@0| () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun $t35 () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$modifies| () |T@[Int]Bool|)
(declare-fun |inline$$1_Event_emit_event'$1_DesignatedDealer_ReceivedMintEvent'$0$handle@1| () T@$1_Event_EventHandle)
(declare-fun $t31@0 () T@$Mutation_75530)
(declare-fun $t34@0 () T@$1_DesignatedDealer_ReceivedMintEvent)
(declare-fun $t33 () Bool)
(declare-fun $t32 () (Seq Int))
(declare-fun $t17@@1 () Int)
(declare-fun $t30@1 () T@$Mutation_108601)
(declare-fun $t30 () T@$Mutation_108601)
(declare-fun $t30@0 () T@$Mutation_108601)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun $1_DesignatedDealer_Dealer_$modifies@@0 () |T@[Int]Bool|)
(declare-fun $t27@0 () Int)
(declare-fun $t26@@0 () |T@$1_DesignatedDealer_TierInfo'#0'|)
(declare-fun $t28@0 () Int)
(declare-fun $t29@0 () (Seq Int))
(declare-fun |$1_DesignatedDealer_TierInfo'#0'_$memory@1| () T@$Memory_92802)
(declare-fun |$1_DesignatedDealer_TierInfo'#0'_$memory| () T@$Memory_92802)
(declare-fun $t26@0 () |T@$1_DesignatedDealer_TierInfo'#0'|)
(declare-fun |Select__T@[Int]$1_DesignatedDealer_TierInfo'#0'_| (|T@[Int]$1_DesignatedDealer_TierInfo'#0'| Int) |T@$1_DesignatedDealer_TierInfo'#0'|)
(declare-fun |$1_DesignatedDealer_TierInfo'#0'_$memory@0| () T@$Memory_92802)
(declare-fun $abort_code@0@@0 () Int)
(declare-fun $t25@0 () Bool)
(declare-fun |$1_DesignatedDealer_TierInfo'#0'_$modifies| () |T@[Int]Bool|)
(declare-fun $t22@@0 () Bool)
(declare-fun $t24@@0 () Int)
(declare-fun inline$$Gt$0$dst@1 () Bool)
(declare-fun $t21@@1 () Int)
(declare-fun $t16@@0 () Bool)
(declare-fun $t15@@0 () Int)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_79526)
(declare-fun |Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| Int) |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory| () T@$Memory_80935)
(declare-fun $1_DiemAccount_DiemAccount_$memory () T@$Memory_97160)
(declare-fun $1_VASPDomain_VASPDomainManager_$memory () T@$Memory_91091)
(declare-fun $1_VASPDomain_VASPDomains_$memory () T@$Memory_91190)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory () T@$Memory_80902)
(declare-fun $1_VASP_ParentVASP_$memory () T@$Memory_91287)
(declare-fun $1_VASP_ChildVASP_$memory () T@$Memory_91223)
(declare-fun _$t3 () Int)
(declare-fun $t31 () T@$Mutation_75530)
(push 1)
(set-info :boogie-vc-id $1_DesignatedDealer_tiered_mint$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 155644) (let ((anon40_Else_correct@@0  (=> (not $abort_flag@4) (=> (and (= |inline$$1_Diem_mint'#0'$0$$ret0@1| |inline$$1_Diem_mint'#0'$0$$ret0@1|) (= $t37 (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_81686| |$1_Diem_CurrencyInfo'#0'_$memory@3|) 173345816))) (and (=> (= (ControlFlow 0 136555) (- 0 158514)) (not (= _$t1@@1 0))) (=> (not (= _$t1@@1 0)) (and (=> (= (ControlFlow 0 136555) (- 0 158524)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_82212| |$1_Diem_MintCapability'#0'_$memory|) (|$addr#$signer| _$t0@@2))))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_82212| |$1_Diem_MintCapability'#0'_$memory|) (|$addr#$signer| _$t0@@2)))) (and (=> (= (ControlFlow 0 136555) (- 0 158537)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_79648| $1_Roles_RoleId_$memory) $t9@@1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_79648| $1_Roles_RoleId_$memory) $t9@@1))) (and (=> (= (ControlFlow 0 136555) (- 0 158549)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_79648| $1_Roles_RoleId_$memory) $t9@@1)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_79648| $1_Roles_RoleId_$memory) $t9@@1)) 1))) (and (=> (= (ControlFlow 0 136555) (- 0 158567)) (not (not (= (|$addr#$signer| _$t0@@2) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t0@@2) 186537453))) (and (=> (= (ControlFlow 0 136555) (- 0 158581)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_92161| $1_DesignatedDealer_Dealer_$memory) _$t2@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_92161| $1_DesignatedDealer_Dealer_$memory) _$t2@@0))) (and (=> (= (ControlFlow 0 136555) (- 0 158592)) (not (not (|$can_mint#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_81686| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))) (=> (not (not (|$can_mint#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_81686| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 136555) (- 0 158604)) (not (> (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_81686| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) _$t1@@1) $MAX_U128))) (=> (not (> (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_81686| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) _$t1@@1) $MAX_U128)) (and (=> (= (ControlFlow 0 136555) (- 0 158621)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_81686| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_81686| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 136555) (- 0 158631)) (|Select__T@[Int]Bool_| (|domain#$Memory_92161| $1_DesignatedDealer_Dealer_$memory) _$t2@@0)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_92161| $1_DesignatedDealer_Dealer_$memory) _$t2@@0) (and (=> (= (ControlFlow 0 136555) (- 0 158639)) (|Select__T@[Int]Bool_| (|domain#$Memory_81686| |$1_Diem_CurrencyInfo'#0'_$memory@3|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_81686| |$1_Diem_CurrencyInfo'#0'_$memory@3|) 173345816) (and (=> (= (ControlFlow 0 136555) (- 0 158647)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_92802| |$1_DesignatedDealer_TierInfo'#0'_$memory@2|) _$t2@@0))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_92802| |$1_DesignatedDealer_TierInfo'#0'_$memory@2|) _$t2@@0)) (and (=> (= (ControlFlow 0 136555) (- 0 158656)) (= (|$value#$1_Diem_Diem'#0'| |inline$$1_Diem_mint'#0'$0$$ret0@1|) _$t1@@1)) (=> (= (|$value#$1_Diem_Diem'#0'| |inline$$1_Diem_mint'#0'$0$$ret0@1|) _$t1@@1) (and (=> (= (ControlFlow 0 136555) (- 0 158665)) (= $t37 (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| $t8@@1) _$t1@@1) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| $t8@@1) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| $t8@@1) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| $t8@@1) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $t8@@1) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| $t8@@1) (|$currency_code#$1_Diem_CurrencyInfo'#0'| $t8@@1) (|$can_mint#$1_Diem_CurrencyInfo'#0'| $t8@@1) (|$mint_events#$1_Diem_CurrencyInfo'#0'| $t8@@1) (|$burn_events#$1_Diem_CurrencyInfo'#0'| $t8@@1) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| $t8@@1) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| $t8@@1) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| $t8@@1)))) (=> (= $t37 (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| $t8@@1) _$t1@@1) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| $t8@@1) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| $t8@@1) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| $t8@@1) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $t8@@1) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| $t8@@1) (|$currency_code#$1_Diem_CurrencyInfo'#0'| $t8@@1) (|$can_mint#$1_Diem_CurrencyInfo'#0'| $t8@@1) (|$mint_events#$1_Diem_CurrencyInfo'#0'| $t8@@1) (|$burn_events#$1_Diem_CurrencyInfo'#0'| $t8@@1) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| $t8@@1) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| $t8@@1) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| $t8@@1))) (and (=> (= (ControlFlow 0 136555) (- 0 158683)) (let ((actual ($EventStore (- (|counter#$EventStore| $es@2) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@2) (|streams#$EventStore| $es)))))
(let ((expected (let ((stream@@3 (|Select__T@[$1_Event_EventHandle]Multiset_52020_| (|streams#$EventStore| $EmptyEventStore) $t10@@1)))
(let ((stream_new (let ((len (|l#Multiset_52020| stream@@3)))
(let ((cnt (|Select__T@[$EventRep]Int_| (|v#Multiset_52020| stream@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@1))))
(Multiset_52020 (|Store__T@[$EventRep]Int_| (|v#Multiset_52020| stream@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@1) (+ cnt 1)) (+ len 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_52020_| (|streams#$EventStore| $EmptyEventStore) $t10@@1 stream_new))))))
 (and (<= (|counter#$EventStore| expected) (|counter#$EventStore| actual)) (forall ((handle@@4 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_52020| (|Select__T@[$1_Event_EventHandle]Multiset_52020_| (|streams#$EventStore| expected) handle@@4)) (|l#Multiset_52020| (|Select__T@[$1_Event_EventHandle]Multiset_52020_| (|streams#$EventStore| actual) handle@@4))) (forall ((v@@40 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_52020| (|Select__T@[$1_Event_EventHandle]Multiset_52020_| (|streams#$EventStore| expected) handle@@4)) v@@40) (|Select__T@[$EventRep]Int_| (|v#Multiset_52020| (|Select__T@[$1_Event_EventHandle]Multiset_52020_| (|streams#$EventStore| actual) handle@@4)) v@@40))
 :qid |DesignatedDealerbpl.139:13|
 :skolemid |3|
)))
 :qid |DesignatedDealerbpl.2748:13|
 :skolemid |75|
)))))) (=> (let ((actual@@0 ($EventStore (- (|counter#$EventStore| $es@2) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@2) (|streams#$EventStore| $es)))))
(let ((expected@@0 (let ((stream@@4 (|Select__T@[$1_Event_EventHandle]Multiset_52020_| (|streams#$EventStore| $EmptyEventStore) $t10@@1)))
(let ((stream_new@@0 (let ((len@@0 (|l#Multiset_52020| stream@@4)))
(let ((cnt@@0 (|Select__T@[$EventRep]Int_| (|v#Multiset_52020| stream@@4) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@1))))
(Multiset_52020 (|Store__T@[$EventRep]Int_| (|v#Multiset_52020| stream@@4) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@1) (+ cnt@@0 1)) (+ len@@0 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_52020_| (|streams#$EventStore| $EmptyEventStore) $t10@@1 stream_new@@0))))))
 (and (<= (|counter#$EventStore| expected@@0) (|counter#$EventStore| actual@@0)) (forall ((handle@@5 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_52020| (|Select__T@[$1_Event_EventHandle]Multiset_52020_| (|streams#$EventStore| expected@@0) handle@@5)) (|l#Multiset_52020| (|Select__T@[$1_Event_EventHandle]Multiset_52020_| (|streams#$EventStore| actual@@0) handle@@5))) (forall ((v@@41 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_52020| (|Select__T@[$1_Event_EventHandle]Multiset_52020_| (|streams#$EventStore| expected@@0) handle@@5)) v@@41) (|Select__T@[$EventRep]Int_| (|v#Multiset_52020| (|Select__T@[$1_Event_EventHandle]Multiset_52020_| (|streams#$EventStore| actual@@0) handle@@5)) v@@41))
 :qid |DesignatedDealerbpl.139:13|
 :skolemid |3|
)))
 :qid |DesignatedDealerbpl.2748:13|
 :skolemid |75|
))))) (and (=> (= (ControlFlow 0 136555) (- 0 158708)) (let ((actual@@1 ($EventStore (- (|counter#$EventStore| $es@2) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@2) (|streams#$EventStore| $es)))))
(let ((expected@@1 (ite  (not (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| $t12@@1)) (let ((stream@@5 (|Select__T@[$1_Event_EventHandle]Multiset_52020_| (|streams#$EventStore| (let ((stream@@6 (|Select__T@[$1_Event_EventHandle]Multiset_52020_| (|streams#$EventStore| $EmptyEventStore) $t10@@1)))
(let ((stream_new@@1 (let ((len@@1 (|l#Multiset_52020| stream@@6)))
(let ((cnt@@1 (|Select__T@[$EventRep]Int_| (|v#Multiset_52020| stream@@6) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@1))))
(Multiset_52020 (|Store__T@[$EventRep]Int_| (|v#Multiset_52020| stream@@6) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@1) (+ cnt@@1 1)) (+ len@@1 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_52020_| (|streams#$EventStore| $EmptyEventStore) $t10@@1 stream_new@@1))))) $t13@@0)))
(let ((stream_new@@2 (let ((len@@2 (|l#Multiset_52020| stream@@5)))
(let ((cnt@@2 (|Select__T@[$EventRep]Int_| (|v#Multiset_52020| stream@@5) (|$ToEventRep'$1_Diem_MintEvent'| $t14@@0))))
(Multiset_52020 (|Store__T@[$EventRep]Int_| (|v#Multiset_52020| stream@@5) (|$ToEventRep'$1_Diem_MintEvent'| $t14@@0) (+ cnt@@2 1)) (+ len@@2 1))))))
($EventStore (+ (|counter#$EventStore| (let ((stream@@6 (|Select__T@[$1_Event_EventHandle]Multiset_52020_| (|streams#$EventStore| $EmptyEventStore) $t10@@1)))
(let ((stream_new@@1 (let ((len@@1 (|l#Multiset_52020| stream@@6)))
(let ((cnt@@1 (|Select__T@[$EventRep]Int_| (|v#Multiset_52020| stream@@6) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@1))))
(Multiset_52020 (|Store__T@[$EventRep]Int_| (|v#Multiset_52020| stream@@6) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@1) (+ cnt@@1 1)) (+ len@@1 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_52020_| (|streams#$EventStore| $EmptyEventStore) $t10@@1 stream_new@@1))))) 1) (|Store__T@[$1_Event_EventHandle]Multiset_52020_| (|streams#$EventStore| (let ((stream@@6 (|Select__T@[$1_Event_EventHandle]Multiset_52020_| (|streams#$EventStore| $EmptyEventStore) $t10@@1)))
(let ((stream_new@@1 (let ((len@@1 (|l#Multiset_52020| stream@@6)))
(let ((cnt@@1 (|Select__T@[$EventRep]Int_| (|v#Multiset_52020| stream@@6) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@1))))
(Multiset_52020 (|Store__T@[$EventRep]Int_| (|v#Multiset_52020| stream@@6) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@1) (+ cnt@@1 1)) (+ len@@1 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_52020_| (|streams#$EventStore| $EmptyEventStore) $t10@@1 stream_new@@1))))) $t13@@0 stream_new@@2)))) (let ((stream@@6 (|Select__T@[$1_Event_EventHandle]Multiset_52020_| (|streams#$EventStore| $EmptyEventStore) $t10@@1)))
(let ((stream_new@@1 (let ((len@@1 (|l#Multiset_52020| stream@@6)))
(let ((cnt@@1 (|Select__T@[$EventRep]Int_| (|v#Multiset_52020| stream@@6) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@1))))
(Multiset_52020 (|Store__T@[$EventRep]Int_| (|v#Multiset_52020| stream@@6) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@1) (+ cnt@@1 1)) (+ len@@1 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_52020_| (|streams#$EventStore| $EmptyEventStore) $t10@@1 stream_new@@1)))))))
 (and (<= (|counter#$EventStore| expected@@1) (|counter#$EventStore| actual@@1)) (forall ((handle@@6 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_52020| (|Select__T@[$1_Event_EventHandle]Multiset_52020_| (|streams#$EventStore| expected@@1) handle@@6)) (|l#Multiset_52020| (|Select__T@[$1_Event_EventHandle]Multiset_52020_| (|streams#$EventStore| actual@@1) handle@@6))) (forall ((v@@42 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_52020| (|Select__T@[$1_Event_EventHandle]Multiset_52020_| (|streams#$EventStore| expected@@1) handle@@6)) v@@42) (|Select__T@[$EventRep]Int_| (|v#Multiset_52020| (|Select__T@[$1_Event_EventHandle]Multiset_52020_| (|streams#$EventStore| actual@@1) handle@@6)) v@@42))
 :qid |DesignatedDealerbpl.139:13|
 :skolemid |3|
)))
 :qid |DesignatedDealerbpl.2748:13|
 :skolemid |75|
)))))) (=> (let ((actual@@2 ($EventStore (- (|counter#$EventStore| $es@2) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@2) (|streams#$EventStore| $es)))))
(let ((expected@@2 (ite  (not (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| $t12@@1)) (let ((stream@@7 (|Select__T@[$1_Event_EventHandle]Multiset_52020_| (|streams#$EventStore| (let ((stream@@8 (|Select__T@[$1_Event_EventHandle]Multiset_52020_| (|streams#$EventStore| $EmptyEventStore) $t10@@1)))
(let ((stream_new@@3 (let ((len@@3 (|l#Multiset_52020| stream@@8)))
(let ((cnt@@3 (|Select__T@[$EventRep]Int_| (|v#Multiset_52020| stream@@8) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@1))))
(Multiset_52020 (|Store__T@[$EventRep]Int_| (|v#Multiset_52020| stream@@8) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@1) (+ cnt@@3 1)) (+ len@@3 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_52020_| (|streams#$EventStore| $EmptyEventStore) $t10@@1 stream_new@@3))))) $t13@@0)))
(let ((stream_new@@4 (let ((len@@4 (|l#Multiset_52020| stream@@7)))
(let ((cnt@@4 (|Select__T@[$EventRep]Int_| (|v#Multiset_52020| stream@@7) (|$ToEventRep'$1_Diem_MintEvent'| $t14@@0))))
(Multiset_52020 (|Store__T@[$EventRep]Int_| (|v#Multiset_52020| stream@@7) (|$ToEventRep'$1_Diem_MintEvent'| $t14@@0) (+ cnt@@4 1)) (+ len@@4 1))))))
($EventStore (+ (|counter#$EventStore| (let ((stream@@8 (|Select__T@[$1_Event_EventHandle]Multiset_52020_| (|streams#$EventStore| $EmptyEventStore) $t10@@1)))
(let ((stream_new@@3 (let ((len@@3 (|l#Multiset_52020| stream@@8)))
(let ((cnt@@3 (|Select__T@[$EventRep]Int_| (|v#Multiset_52020| stream@@8) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@1))))
(Multiset_52020 (|Store__T@[$EventRep]Int_| (|v#Multiset_52020| stream@@8) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@1) (+ cnt@@3 1)) (+ len@@3 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_52020_| (|streams#$EventStore| $EmptyEventStore) $t10@@1 stream_new@@3))))) 1) (|Store__T@[$1_Event_EventHandle]Multiset_52020_| (|streams#$EventStore| (let ((stream@@8 (|Select__T@[$1_Event_EventHandle]Multiset_52020_| (|streams#$EventStore| $EmptyEventStore) $t10@@1)))
(let ((stream_new@@3 (let ((len@@3 (|l#Multiset_52020| stream@@8)))
(let ((cnt@@3 (|Select__T@[$EventRep]Int_| (|v#Multiset_52020| stream@@8) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@1))))
(Multiset_52020 (|Store__T@[$EventRep]Int_| (|v#Multiset_52020| stream@@8) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@1) (+ cnt@@3 1)) (+ len@@3 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_52020_| (|streams#$EventStore| $EmptyEventStore) $t10@@1 stream_new@@3))))) $t13@@0 stream_new@@4)))) (let ((stream@@8 (|Select__T@[$1_Event_EventHandle]Multiset_52020_| (|streams#$EventStore| $EmptyEventStore) $t10@@1)))
(let ((stream_new@@3 (let ((len@@3 (|l#Multiset_52020| stream@@8)))
(let ((cnt@@3 (|Select__T@[$EventRep]Int_| (|v#Multiset_52020| stream@@8) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@1))))
(Multiset_52020 (|Store__T@[$EventRep]Int_| (|v#Multiset_52020| stream@@8) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@1) (+ cnt@@3 1)) (+ len@@3 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_52020_| (|streams#$EventStore| $EmptyEventStore) $t10@@1 stream_new@@3)))))))
 (and (<= (|counter#$EventStore| expected@@2) (|counter#$EventStore| actual@@2)) (forall ((handle@@7 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_52020| (|Select__T@[$1_Event_EventHandle]Multiset_52020_| (|streams#$EventStore| expected@@2) handle@@7)) (|l#Multiset_52020| (|Select__T@[$1_Event_EventHandle]Multiset_52020_| (|streams#$EventStore| actual@@2) handle@@7))) (forall ((v@@43 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_52020| (|Select__T@[$1_Event_EventHandle]Multiset_52020_| (|streams#$EventStore| expected@@2) handle@@7)) v@@43) (|Select__T@[$EventRep]Int_| (|v#Multiset_52020| (|Select__T@[$1_Event_EventHandle]Multiset_52020_| (|streams#$EventStore| actual@@2) handle@@7)) v@@43))
 :qid |DesignatedDealerbpl.139:13|
 :skolemid |3|
)))
 :qid |DesignatedDealerbpl.2748:13|
 :skolemid |75|
))))) (=> (= (ControlFlow 0 136555) (- 0 158745)) (let ((actual@@3 ($EventStore (- (|counter#$EventStore| $es@2) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@2) (|streams#$EventStore| $es)))))
(let ((expected@@3 (ite  (not (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| $t12@@1)) (let ((stream@@9 (|Select__T@[$1_Event_EventHandle]Multiset_52020_| (|streams#$EventStore| (let ((stream@@10 (|Select__T@[$1_Event_EventHandle]Multiset_52020_| (|streams#$EventStore| $EmptyEventStore) $t10@@1)))
(let ((stream_new@@5 (let ((len@@5 (|l#Multiset_52020| stream@@10)))
(let ((cnt@@5 (|Select__T@[$EventRep]Int_| (|v#Multiset_52020| stream@@10) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@1))))
(Multiset_52020 (|Store__T@[$EventRep]Int_| (|v#Multiset_52020| stream@@10) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@1) (+ cnt@@5 1)) (+ len@@5 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_52020_| (|streams#$EventStore| $EmptyEventStore) $t10@@1 stream_new@@5))))) $t13@@0)))
(let ((stream_new@@6 (let ((len@@6 (|l#Multiset_52020| stream@@9)))
(let ((cnt@@6 (|Select__T@[$EventRep]Int_| (|v#Multiset_52020| stream@@9) (|$ToEventRep'$1_Diem_MintEvent'| $t14@@0))))
(Multiset_52020 (|Store__T@[$EventRep]Int_| (|v#Multiset_52020| stream@@9) (|$ToEventRep'$1_Diem_MintEvent'| $t14@@0) (+ cnt@@6 1)) (+ len@@6 1))))))
($EventStore (+ (|counter#$EventStore| (let ((stream@@10 (|Select__T@[$1_Event_EventHandle]Multiset_52020_| (|streams#$EventStore| $EmptyEventStore) $t10@@1)))
(let ((stream_new@@5 (let ((len@@5 (|l#Multiset_52020| stream@@10)))
(let ((cnt@@5 (|Select__T@[$EventRep]Int_| (|v#Multiset_52020| stream@@10) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@1))))
(Multiset_52020 (|Store__T@[$EventRep]Int_| (|v#Multiset_52020| stream@@10) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@1) (+ cnt@@5 1)) (+ len@@5 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_52020_| (|streams#$EventStore| $EmptyEventStore) $t10@@1 stream_new@@5))))) 1) (|Store__T@[$1_Event_EventHandle]Multiset_52020_| (|streams#$EventStore| (let ((stream@@10 (|Select__T@[$1_Event_EventHandle]Multiset_52020_| (|streams#$EventStore| $EmptyEventStore) $t10@@1)))
(let ((stream_new@@5 (let ((len@@5 (|l#Multiset_52020| stream@@10)))
(let ((cnt@@5 (|Select__T@[$EventRep]Int_| (|v#Multiset_52020| stream@@10) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@1))))
(Multiset_52020 (|Store__T@[$EventRep]Int_| (|v#Multiset_52020| stream@@10) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@1) (+ cnt@@5 1)) (+ len@@5 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_52020_| (|streams#$EventStore| $EmptyEventStore) $t10@@1 stream_new@@5))))) $t13@@0 stream_new@@6)))) (let ((stream@@10 (|Select__T@[$1_Event_EventHandle]Multiset_52020_| (|streams#$EventStore| $EmptyEventStore) $t10@@1)))
(let ((stream_new@@5 (let ((len@@5 (|l#Multiset_52020| stream@@10)))
(let ((cnt@@5 (|Select__T@[$EventRep]Int_| (|v#Multiset_52020| stream@@10) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@1))))
(Multiset_52020 (|Store__T@[$EventRep]Int_| (|v#Multiset_52020| stream@@10) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11@@1) (+ cnt@@5 1)) (+ len@@5 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_52020_| (|streams#$EventStore| $EmptyEventStore) $t10@@1 stream_new@@5)))))))
 (and (<= (|counter#$EventStore| actual@@3) (|counter#$EventStore| expected@@3)) (forall ((handle@@8 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_52020| (|Select__T@[$1_Event_EventHandle]Multiset_52020_| (|streams#$EventStore| actual@@3) handle@@8)) (|l#Multiset_52020| (|Select__T@[$1_Event_EventHandle]Multiset_52020_| (|streams#$EventStore| expected@@3) handle@@8))) (forall ((v@@44 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_52020| (|Select__T@[$1_Event_EventHandle]Multiset_52020_| (|streams#$EventStore| actual@@3) handle@@8)) v@@44) (|Select__T@[$EventRep]Int_| (|v#Multiset_52020| (|Select__T@[$1_Event_EventHandle]Multiset_52020_| (|streams#$EventStore| expected@@3) handle@@8)) v@@44))
 :qid |DesignatedDealerbpl.139:13|
 :skolemid |3|
)))
 :qid |DesignatedDealerbpl.2748:13|
 :skolemid |75|
))))))))))))))))))))))))))))))))))))))))))
(let ((L8_correct  (and (=> (= (ControlFlow 0 134816) (- 0 158244)) (or (or (or (or (or (or (or (or (= _$t1@@1 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_82212| |$1_Diem_MintCapability'#0'_$memory|) (|$addr#$signer| _$t0@@2)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_79648| $1_Roles_RoleId_$memory) $t9@@1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_79648| $1_Roles_RoleId_$memory) $t9@@1)) 1))) (not (= (|$addr#$signer| _$t0@@2) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_92161| $1_DesignatedDealer_Dealer_$memory) _$t2@@0))) (not (|$can_mint#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_81686| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (> (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_81686| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) _$t1@@1) $MAX_U128)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_81686| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (=> (or (or (or (or (or (or (or (or (= _$t1@@1 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_82212| |$1_Diem_MintCapability'#0'_$memory|) (|$addr#$signer| _$t0@@2)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_79648| $1_Roles_RoleId_$memory) $t9@@1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_79648| $1_Roles_RoleId_$memory) $t9@@1)) 1))) (not (= (|$addr#$signer| _$t0@@2) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_92161| $1_DesignatedDealer_Dealer_$memory) _$t2@@0))) (not (|$can_mint#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_81686| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (> (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_81686| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) _$t1@@1) $MAX_U128)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_81686| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (=> (= (ControlFlow 0 134816) (- 0 158332)) (or (or (or (or (or (or (or (or (and (= _$t1@@1 0) (= 7 $t17@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_82212| |$1_Diem_MintCapability'#0'_$memory|) (|$addr#$signer| _$t0@@2))) (= 4 $t17@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_79648| $1_Roles_RoleId_$memory) $t9@@1)) (= 5 $t17@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_79648| $1_Roles_RoleId_$memory) $t9@@1)) 1)) (= 3 $t17@0))) (and (not (= (|$addr#$signer| _$t0@@2) 186537453)) (= 2 $t17@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_92161| $1_DesignatedDealer_Dealer_$memory) _$t2@@0)) (= 5 $t17@0))) (and (not (|$can_mint#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_81686| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (= 1 $t17@0))) (and (> (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_81686| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) _$t1@@1) $MAX_U128) (= 8 $t17@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_81686| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 $t17@0))))))))
(let ((anon35_Then_correct@@0  (=> (and (and $abort_flag@0@@0 (= $abort_code@1@@0 $abort_code@1@@0)) (and (= $t17@0 $abort_code@1@@0) (= (ControlFlow 0 136741) 134816))) L8_correct)))
(let ((anon40_Then_correct@@0  (=> (and (and $abort_flag@4 (= $abort_code@5 $abort_code@5)) (and (= $t17@0 $abort_code@5) (= (ControlFlow 0 136569) 134816))) L8_correct)))
(let ((|inline$$1_Diem_mint'#0'$0$anon13_correct|  (=> (and (and (and (and (|$IsValid'$1_Diem_Diem'#0''| |inline$$1_Diem_mint'#0'$0$$t16@0|) (= |inline$$1_Diem_mint'#0'$0$$t18@0| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_81686| |$1_Diem_CurrencyInfo'#0'_$memory@2|) 173345816))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_81686| |$1_Diem_CurrencyInfo'#0'_$memory@2|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_81686| |$1_Diem_CurrencyInfo'#0'_$memory@2|) 173345816))) (and (and (= |inline$$1_Diem_mint'#0'$0$$t18@0| (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) _$t1@@1) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$currency_code#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$can_mint#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$mint_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$burn_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|))) (= (|$value#$1_Diem_Diem'#0'| |inline$$1_Diem_mint'#0'$0$$t16@0|) _$t1@@1)) (and (= |inline$$1_Diem_mint'#0'$0$$t19@0| |inline$$1_Diem_mint'#0'$0$$t15@0|) (= |inline$$1_Diem_mint'#0'$0$$t20@0| |inline$$1_Diem_mint'#0'$0$$t14@0|)))) (and (and (and (= |inline$$1_Diem_mint'#0'$0$$t21@0|  (not (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t13@0|))) (= $es@1 (ite |inline$$1_Diem_mint'#0'$0$$t21@0| (let ((stream@@11 (|Select__T@[$1_Event_EventHandle]Multiset_52020_| (|streams#$EventStore| $es@0) |inline$$1_Diem_mint'#0'$0$$t20@0|)))
(let ((stream_new@@7 (let ((len@@7 (|l#Multiset_52020| stream@@11)))
(let ((cnt@@7 (|Select__T@[$EventRep]Int_| (|v#Multiset_52020| stream@@11) (|$ToEventRep'$1_Diem_MintEvent'| |inline$$1_Diem_mint'#0'$0$$t19@0|))))
(Multiset_52020 (|Store__T@[$EventRep]Int_| (|v#Multiset_52020| stream@@11) (|$ToEventRep'$1_Diem_MintEvent'| |inline$$1_Diem_mint'#0'$0$$t19@0|) (+ cnt@@7 1)) (+ len@@7 1))))))
($EventStore (+ (|counter#$EventStore| $es@0) 1) (|Store__T@[$1_Event_EventHandle]Multiset_52020_| (|streams#$EventStore| $es@0) |inline$$1_Diem_mint'#0'$0$$t20@0| stream_new@@7)))) $es@0))) (and (= |inline$$1_Diem_mint'#0'$0$$t16@0| |inline$$1_Diem_mint'#0'$0$$t16@0|) (= $abort_code@5 $abort_code@4))) (and (and (= $es@2 $es@1) (= $abort_flag@4 $abort_flag@3)) (and (= |inline$$1_Diem_mint'#0'$0$$ret0@1| |inline$$1_Diem_mint'#0'$0$$t16@0|) (= |$1_Diem_CurrencyInfo'#0'_$memory@3| |$1_Diem_CurrencyInfo'#0'_$memory@2|))))) (and (=> (= (ControlFlow 0 136091) 136569) anon40_Then_correct@@0) (=> (= (ControlFlow 0 136091) 136555) anon40_Else_correct@@0)))))
(let ((|inline$$1_Diem_mint'#0'$0$anon18_Else_correct|  (=> (and (and (not |inline$$1_Diem_mint'#0'$0$$temp_0'bool'@1|) (= |$1_Diem_CurrencyInfo'#0'_$memory@1| ($Memory_81686 (|Store__T@[Int]Bool_| (|domain#$Memory_81686| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816 false) (|contents#$Memory_81686| |$1_Diem_CurrencyInfo'#0'_$memory|)))) (and (= |$1_Diem_CurrencyInfo'#0'_$memory@2| |$1_Diem_CurrencyInfo'#0'_$memory@1|) (= (ControlFlow 0 135989) 136091))) |inline$$1_Diem_mint'#0'$0$anon13_correct|)))
(let ((|inline$$1_Diem_mint'#0'$0$anon18_Then_correct|  (=> (and (and |inline$$1_Diem_mint'#0'$0$$temp_0'bool'@1| (= |$1_Diem_CurrencyInfo'#0'_$memory@0| ($Memory_81686 (|Store__T@[Int]Bool_| (|domain#$Memory_81686| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816 true) (|Store__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_81686| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816 |inline$$1_Diem_mint'#0'$0$$temp_0'$1_Diem_CurrencyInfo'#0''@1|)))) (and (= |$1_Diem_CurrencyInfo'#0'_$memory@2| |$1_Diem_CurrencyInfo'#0'_$memory@0|) (= (ControlFlow 0 136103) 136091))) |inline$$1_Diem_mint'#0'$0$anon13_correct|)))
(let ((|inline$$1_Diem_mint'#0'$0$anon17_Else_correct|  (=> (not |inline$$1_Diem_mint'#0'$0$$t17@0|) (and (=> (= (ControlFlow 0 135977) 136103) |inline$$1_Diem_mint'#0'$0$anon18_Then_correct|) (=> (= (ControlFlow 0 135977) 135989) |inline$$1_Diem_mint'#0'$0$anon18_Else_correct|)))))
(let ((|inline$$1_Diem_mint'#0'$0$L3_correct|  (=> (= $abort_code@5 |inline$$1_Diem_mint'#0'$0$$t10@1|) (=> (and (and (= $es@2 $es@0) (= $abort_flag@4 true)) (and (= |inline$$1_Diem_mint'#0'$0$$ret0@1| |inline$$1_Diem_mint'#0'$0$$ret0@0|) (= |$1_Diem_CurrencyInfo'#0'_$memory@3| |$1_Diem_CurrencyInfo'#0'_$memory|))) (and (=> (= (ControlFlow 0 135857) 136569) anon40_Then_correct@@0) (=> (= (ControlFlow 0 135857) 136555) anon40_Else_correct@@0))))))
(let ((|inline$$1_Diem_mint'#0'$0$anon17_Then_correct|  (=> |inline$$1_Diem_mint'#0'$0$$t17@0| (=> (and (and (or (or (and (not (|$can_mint#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_81686| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (= 1 |inline$$1_Diem_mint'#0'$0$$t10@0|)) (and (> (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_81686| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) _$t1@@1) $MAX_U128) (= 8 |inline$$1_Diem_mint'#0'$0$$t10@0|))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_81686| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 |inline$$1_Diem_mint'#0'$0$$t10@0|))) (= |inline$$1_Diem_mint'#0'$0$$t10@0| |inline$$1_Diem_mint'#0'$0$$t10@0|)) (and (= |inline$$1_Diem_mint'#0'$0$$t10@1| |inline$$1_Diem_mint'#0'$0$$t10@0|) (= (ControlFlow 0 136171) 135857))) |inline$$1_Diem_mint'#0'$0$L3_correct|))))
(let ((|inline$$1_Diem_mint'#0'$0$anon16_Else_correct|  (=> (and (not $abort_flag@3) (= |inline$$1_Diem_mint'#0'$0$$t12@0| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_81686| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (=> (and (and (= |inline$$1_Diem_mint'#0'$0$$t13@0| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_81686| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= |inline$$1_Diem_mint'#0'$0$$t14@0| (|$mint_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t13@0|))) (and (= |inline$$1_Diem_mint'#0'$0$$t15@0| ($1_Diem_MintEvent _$t1@@1 (|$currency_code#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t13@0|))) (= |inline$$1_Diem_mint'#0'$0$$t17@0|  (or (or (not (|$can_mint#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_81686| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (> (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_81686| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) _$t1@@1) $MAX_U128)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_81686| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))))) (and (=> (= (ControlFlow 0 135971) 136171) |inline$$1_Diem_mint'#0'$0$anon17_Then_correct|) (=> (= (ControlFlow 0 135971) 135977) |inline$$1_Diem_mint'#0'$0$anon17_Else_correct|))))))
(let ((|inline$$1_Diem_mint'#0'$0$anon16_Then_correct|  (=> (and (and $abort_flag@3 (= $abort_code@4 $abort_code@4)) (and (= |inline$$1_Diem_mint'#0'$0$$t10@1| $abort_code@4) (= (ControlFlow 0 136185) 135857))) |inline$$1_Diem_mint'#0'$0$L3_correct|)))
(let ((|inline$$1_Diem_mint'#0'$0$anon15_Then$1_correct|  (=> (and (= $abort_flag@3 true) (= $abort_code@4 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 136237) 136185) |inline$$1_Diem_mint'#0'$0$anon16_Then_correct|) (=> (= (ControlFlow 0 136237) 135971) |inline$$1_Diem_mint'#0'$0$anon16_Else_correct|)))))
(let ((|inline$$1_Diem_mint'#0'$0$anon15_Then_correct|  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_82212| |$1_Diem_MintCapability'#0'_$memory|) |inline$$1_Diem_mint'#0'$0$$t6@0|)) (= (ControlFlow 0 136235) 136237)) |inline$$1_Diem_mint'#0'$0$anon15_Then$1_correct|)))
(let ((|inline$$1_Diem_mint'#0'$0$anon15_Else_correct|  (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_82212| |$1_Diem_MintCapability'#0'_$memory|) |inline$$1_Diem_mint'#0'$0$$t6@0|) (= |inline$$1_Diem_mint'#0'$0$$t11@1| (|Select__T@[Int]$1_Diem_MintCapability'#0'_| (|contents#$Memory_82212| |$1_Diem_MintCapability'#0'_$memory|) |inline$$1_Diem_mint'#0'$0$$t6@0|))) (and (= $abort_flag@3 $abort_flag@2) (= $abort_code@4 $abort_code@3))) (and (=> (= (ControlFlow 0 135877) 136185) |inline$$1_Diem_mint'#0'$0$anon16_Then_correct|) (=> (= (ControlFlow 0 135877) 135971) |inline$$1_Diem_mint'#0'$0$anon16_Else_correct|)))))
(let ((|inline$$1_Diem_mint'#0'$0$anon14_Then_correct|  (=> |inline$$1_Diem_mint'#0'$0$$t7@1| (and (=> (= (ControlFlow 0 135863) 136235) |inline$$1_Diem_mint'#0'$0$anon15_Then_correct|) (=> (= (ControlFlow 0 135863) 135877) |inline$$1_Diem_mint'#0'$0$anon15_Else_correct|)))))
(let ((|inline$$1_Diem_mint'#0'$0$anon14_Else_correct|  (=> (and (and (not |inline$$1_Diem_mint'#0'$0$$t7@1|) (= |inline$$1_Diem_mint'#0'$0$$t9@0| |inline$$1_Diem_mint'#0'$0$$t9@0|)) (and (= |inline$$1_Diem_mint'#0'$0$$t10@1| |inline$$1_Diem_mint'#0'$0$$t9@0|) (= (ControlFlow 0 135851) 135857))) |inline$$1_Diem_mint'#0'$0$L3_correct|)))
(let ((|inline$$1_Diem_mint'#0'$0$anon0_correct|  (=> (and (and (= |inline$$1_Diem_mint'#0'$0$$t5@0| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_81686| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= _$t0@@2 _$t0@@2)) (and (= _$t1@@1 _$t1@@1) (|$IsValid'address'| |inline$$1_Diem_mint'#0'$0$$t6@0|))) (=> (and (and (and (= |inline$$1_Diem_mint'#0'$0$$t6@0| (|$addr#$signer| _$t0@@2)) (= |inline$$1_Diem_mint'#0'$0$$t6@0| |inline$$1_Diem_mint'#0'$0$$t6@0|)) (and (= |inline$$1_Diem_mint'#0'$0$$t7@1| (|Select__T@[Int]Bool_| (|domain#$Memory_82212| |$1_Diem_MintCapability'#0'_$memory|) |inline$$1_Diem_mint'#0'$0$$t6@0|)) (|$IsValid'u64'| 9))) (and (and (|$IsValid'u64'| |inline$$1_Diem_mint'#0'$0$$t9@0|) (= |inline$$1_Diem_mint'#0'$0$$t9@0| 4)) (and (= |inline$$1_Diem_mint'#0'$0$$t9@0| |inline$$1_Diem_mint'#0'$0$$t9@0|) (= |inline$$1_Diem_mint'#0'$0$$t7@1| |inline$$1_Diem_mint'#0'$0$$t7@1|)))) (and (=> (= (ControlFlow 0 135835) 135863) |inline$$1_Diem_mint'#0'$0$anon14_Then_correct|) (=> (= (ControlFlow 0 135835) 135851) |inline$$1_Diem_mint'#0'$0$anon14_Else_correct|))))))
(let ((anon39_Else_correct@@0  (=> (and (not $abort_flag@2) (= $t35 (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_81686| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 136243) (- 0 157606)) (|Select__T@[Int]Bool_| |$1_Diem_CurrencyInfo'#0'_$modifies| 173345816)) (=> (|Select__T@[Int]Bool_| |$1_Diem_CurrencyInfo'#0'_$modifies| 173345816) (=> (= (ControlFlow 0 136243) 135835) |inline$$1_Diem_mint'#0'$0$anon0_correct|))))))
(let ((anon39_Then_correct@@0  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= $t17@0 $abort_code@3) (= (ControlFlow 0 136583) 134816))) L8_correct)))
(let ((|inline$$1_Event_emit_event'$1_DesignatedDealer_ReceivedMintEvent'$0$anon0_correct|  (=> (and (= |inline$$1_Event_emit_event'$1_DesignatedDealer_ReceivedMintEvent'$0$handle@1| (|v#$Mutation_75530| $t31@0)) (= $es@0 (let ((stream@@12 (|Select__T@[$1_Event_EventHandle]Multiset_52020_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_DesignatedDealer_ReceivedMintEvent'$0$handle@1|)))
(let ((stream_new@@8 (let ((len@@8 (|l#Multiset_52020| stream@@12)))
(let ((cnt@@8 (|Select__T@[$EventRep]Int_| (|v#Multiset_52020| stream@@12) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t34@0))))
(Multiset_52020 (|Store__T@[$EventRep]Int_| (|v#Multiset_52020| stream@@12) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t34@0) (+ cnt@@8 1)) (+ len@@8 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_52020_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_DesignatedDealer_ReceivedMintEvent'$0$handle@1| stream_new@@8)))))) (and (=> (= (ControlFlow 0 135055) 136583) anon39_Then_correct@@0) (=> (= (ControlFlow 0 135055) 136243) anon39_Else_correct@@0)))))
(let ((anon38_Else_correct@@0  (=> (not $t33) (=> (and (and (|$IsValid'vec'u8''| $t32) (= $t32 (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_81686| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (= $t34@0 ($1_DesignatedDealer_ReceivedMintEvent $t32 _$t2@@0 _$t1@@1)) (= (ControlFlow 0 135061) 135055))) |inline$$1_Event_emit_event'$1_DesignatedDealer_ReceivedMintEvent'$0$anon0_correct|))))
(let ((anon38_Then_correct@@0  (=> $t33 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_81686| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 $t17@@1)) (= $t17@@1 $t17@@1)) (and (= $t17@0 $t17@@1) (= (ControlFlow 0 136609) 134816))) L8_correct))))
(let ((anon37_Else_correct@@0  (=> (not $abort_flag@2) (=> (and (= $t31@0 ($Mutation_75530 (|l#$Mutation_108601| $t30@1) (seq.++ (|p#$Mutation_108601| $t30@1) (seq.unit 0)) (|$mint_event_handle#$1_DesignatedDealer_Dealer| (|v#$Mutation_108601| $t30@1)))) (= $t33  (not (|Select__T@[Int]Bool_| (|domain#$Memory_81686| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 134956) 136609) anon38_Then_correct@@0) (=> (= (ControlFlow 0 134956) 135061) anon38_Else_correct@@0))))))
(let ((anon37_Then_correct@@0  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= $t17@0 $abort_code@3) (= (ControlFlow 0 136623) 134816))) L8_correct)))
(let ((anon36_Then$1_correct  (=> (= $t30@1 $t30) (=> (and (= $abort_flag@2 true) (= $abort_code@3 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 136675) 136623) anon37_Then_correct@@0) (=> (= (ControlFlow 0 136675) 134956) anon37_Else_correct@@0))))))
(let ((anon36_Then_correct@@0  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_92161| $1_DesignatedDealer_Dealer_$memory) _$t2@@0)) (= (ControlFlow 0 136673) 136675)) anon36_Then$1_correct)))
(let ((anon36_Else_correct@@0  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_92161| $1_DesignatedDealer_Dealer_$memory) _$t2@@0) (=> (and (and (= $t30@0 ($Mutation_108601 ($Global _$t2@@0) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_92161| $1_DesignatedDealer_Dealer_$memory) _$t2@@0))) (= $t30@1 $t30@0)) (and (= $abort_flag@2 $abort_flag@1) (= $abort_code@3 $abort_code@2))) (and (=> (= (ControlFlow 0 134924) 136623) anon37_Then_correct@@0) (=> (= (ControlFlow 0 134924) 134956) anon37_Else_correct@@0))))))
(let ((L6_correct  (and (=> (= (ControlFlow 0 134902) (- 0 157362)) (|Select__T@[Int]Bool_| $1_DesignatedDealer_Dealer_$modifies@@0 _$t2@@0)) (=> (|Select__T@[Int]Bool_| $1_DesignatedDealer_Dealer_$modifies@@0 _$t2@@0) (and (=> (= (ControlFlow 0 134902) 136673) anon36_Then_correct@@0) (=> (= (ControlFlow 0 134902) 134924) anon36_Else_correct@@0))))))
(let ((anon35_Else_correct@@0  (=> (and (and (and (not $abort_flag@0@@0) (= $t27@0 (|$window_start#$1_DesignatedDealer_TierInfo'#0'| $t26@@0))) (and (= $t28@0 (|$window_inflow#$1_DesignatedDealer_TierInfo'#0'| $t26@@0)) (= $t29@0 (|$tiers#$1_DesignatedDealer_TierInfo'#0'| $t26@@0)))) (and (and (= $abort_flag@1 $abort_flag@0@@0) (= |$1_DesignatedDealer_TierInfo'#0'_$memory@2| |$1_DesignatedDealer_TierInfo'#0'_$memory@1|)) (and (= $abort_code@2 $abort_code@1@@0) (= (ControlFlow 0 136727) 134902)))) L6_correct)))
(let ((anon34_Then$1_correct@@0  (=> (= |$1_DesignatedDealer_TierInfo'#0'_$memory@1| |$1_DesignatedDealer_TierInfo'#0'_$memory|) (=> (and (= $abort_flag@0@@0 true) (= $abort_code@1@@0 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 136793) 136741) anon35_Then_correct@@0) (=> (= (ControlFlow 0 136793) 136727) anon35_Else_correct@@0))))))
(let ((anon34_Then_correct@@0  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_92802| |$1_DesignatedDealer_TierInfo'#0'_$memory|) _$t2@@0)) (= (ControlFlow 0 136791) 136793)) anon34_Then$1_correct@@0)))
(let ((anon34_Else_correct@@0  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_92802| |$1_DesignatedDealer_TierInfo'#0'_$memory|) _$t2@@0) (= $t26@0 (|Select__T@[Int]$1_DesignatedDealer_TierInfo'#0'_| (|contents#$Memory_92802| |$1_DesignatedDealer_TierInfo'#0'_$memory|) _$t2@@0))) (=> (and (and (= |$1_DesignatedDealer_TierInfo'#0'_$memory@0| ($Memory_92802 (|Store__T@[Int]Bool_| (|domain#$Memory_92802| |$1_DesignatedDealer_TierInfo'#0'_$memory|) _$t2@@0 false) (|contents#$Memory_92802| |$1_DesignatedDealer_TierInfo'#0'_$memory|))) (= |$1_DesignatedDealer_TierInfo'#0'_$memory@1| |$1_DesignatedDealer_TierInfo'#0'_$memory@0|)) (and (= $abort_flag@0@@0 false) (= $abort_code@1@@0 $abort_code@0@@0))) (and (=> (= (ControlFlow 0 136705) 136741) anon35_Then_correct@@0) (=> (= (ControlFlow 0 136705) 136727) anon35_Else_correct@@0))))))
(let ((anon33_Then_correct@@0  (=> $t25@0 (and (=> (= (ControlFlow 0 136685) (- 0 157207)) (|Select__T@[Int]Bool_| |$1_DesignatedDealer_TierInfo'#0'_$modifies| _$t2@@0)) (=> (|Select__T@[Int]Bool_| |$1_DesignatedDealer_TierInfo'#0'_$modifies| _$t2@@0) (and (=> (= (ControlFlow 0 136685) 136791) anon34_Then_correct@@0) (=> (= (ControlFlow 0 136685) 136705) anon34_Else_correct@@0)))))))
(let ((anon33_Else_correct@@0  (=> (not $t25@0) (=> (and (and (= $abort_flag@1 false) (= |$1_DesignatedDealer_TierInfo'#0'_$memory@2| |$1_DesignatedDealer_TierInfo'#0'_$memory|)) (and (= $abort_code@2 $abort_code@0@@0) (= (ControlFlow 0 134894) 134902))) L6_correct))))
(let ((anon32_Then_correct@@0  (=> (and $t22@@0 (= $t25@0 (|Select__T@[Int]Bool_| (|domain#$Memory_92802| |$1_DesignatedDealer_TierInfo'#0'_$memory|) _$t2@@0))) (and (=> (= (ControlFlow 0 134888) 136685) anon33_Then_correct@@0) (=> (= (ControlFlow 0 134888) 134894) anon33_Else_correct@@0)))))
(let ((anon32_Else_correct@@0  (=> (and (and (not $t22@@0) (= $t24@@0 $t24@@0)) (and (= $t17@0 $t24@@0) (= (ControlFlow 0 134878) 134816))) L8_correct)))
(let ((anon31_Then_correct@@0  (=> inline$$Gt$0$dst@1 (=> (and (= $t22@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_92161| $1_DesignatedDealer_Dealer_$memory) _$t2@@0)) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| $t24@@0) (= $t24@@0 5)) (and (= $t24@@0 $t24@@0) (= $t22@@0 $t22@@0))) (and (=> (= (ControlFlow 0 134862) 134888) anon32_Then_correct@@0) (=> (= (ControlFlow 0 134862) 134878) anon32_Else_correct@@0)))))))
(let ((anon31_Else_correct@@0  (=> (and (and (not inline$$Gt$0$dst@1) (= $t21@@1 $t21@@1)) (and (= $t17@0 $t21@@1) (= (ControlFlow 0 134536) 134816))) L8_correct)))
(let ((anon30_Else$1_correct  (=> (|$IsValid'u64'| 4) (=> (and (and (|$IsValid'u64'| $t21@@1) (= $t21@@1 7)) (and (= $t21@@1 $t21@@1) (= inline$$Gt$0$dst@1 inline$$Gt$0$dst@1))) (and (=> (= (ControlFlow 0 134520) 134862) anon31_Then_correct@@0) (=> (= (ControlFlow 0 134520) 134536) anon31_Else_correct@@0))))))
(let ((inline$$Gt$0$anon0_correct  (=> (and (= inline$$Gt$0$dst@1 (> _$t1@@1 0)) (= (ControlFlow 0 134484) 134520)) anon30_Else$1_correct)))
(let ((anon30_Else_correct@@0  (=> (not $t16@@0) (=> (and (|$IsValid'u64'| 0) (= (ControlFlow 0 134490) 134484)) inline$$Gt$0$anon0_correct))))
(let ((anon30_Then_correct@@0  (=> $t16@@0 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_79648| $1_Roles_RoleId_$memory) $t15@@0)) (= 5 $t17@@1)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_79648| $1_Roles_RoleId_$memory) $t15@@0)) 1)) (= 3 $t17@@1))) (and (not (= (|$addr#$signer| _$t0@@2) 186537453)) (= 2 $t17@@1))) (= $t17@@1 $t17@@1)) (and (= $t17@0 $t17@@1) (= (ControlFlow 0 136865) 134816))) L8_correct))))
(let ((anon0$1_correct@@2  (=> (and (and (forall ((addr@@53 Int) ) (!  (=> (|$IsValid'address'| addr@@53) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_79648| $1_Roles_RoleId_$memory) addr@@53) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_79648| $1_Roles_RoleId_$memory) addr@@53)) 0)) (= addr@@53 173345816)))
 :qid |DesignatedDealerbpl.7303:20|
 :skolemid |331|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_79526| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_79648| $1_Roles_RoleId_$memory) 173345816) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_79648| $1_Roles_RoleId_$memory) 173345816)) 0)))) (and (forall ((addr@@54 Int) ) (!  (=> (|$IsValid'address'| addr@@54) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_79648| $1_Roles_RoleId_$memory) addr@@54) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_79648| $1_Roles_RoleId_$memory) addr@@54)) 1)) (= addr@@54 186537453)))
 :qid |DesignatedDealerbpl.7311:20|
 :skolemid |332|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_79526| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_79648| $1_Roles_RoleId_$memory) 186537453) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_79648| $1_Roles_RoleId_$memory) 186537453)) 1))))) (=> (and (and (and (forall ((addr@@55 Int) ) (!  (=> (|$IsValid'address'| addr@@55) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_79648| $1_Roles_RoleId_$memory) addr@@55) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_79648| $1_Roles_RoleId_$memory) addr@@55)) 0)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_79648| $1_Roles_RoleId_$memory) addr@@55) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_79648| $1_Roles_RoleId_$memory) addr@@55)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_79648| $1_Roles_RoleId_$memory) addr@@55) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_79648| $1_Roles_RoleId_$memory) addr@@55)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_79648| $1_Roles_RoleId_$memory) addr@@55) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_79648| $1_Roles_RoleId_$memory) addr@@55)) 2))))))
 :qid |DesignatedDealerbpl.7319:20|
 :skolemid |333|
)) (forall ((addr@@56 Int) ) (!  (=> (|$IsValid'address'| addr@@56) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_79648| $1_Roles_RoleId_$memory) addr@@56) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_79648| $1_Roles_RoleId_$memory) addr@@56)) 1)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_79648| $1_Roles_RoleId_$memory) addr@@56) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_79648| $1_Roles_RoleId_$memory) addr@@56)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_79648| $1_Roles_RoleId_$memory) addr@@56) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_79648| $1_Roles_RoleId_$memory) addr@@56)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_79648| $1_Roles_RoleId_$memory) addr@@56) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_79648| $1_Roles_RoleId_$memory) addr@@56)) 2))))))
 :qid |DesignatedDealerbpl.7323:20|
 :skolemid |334|
))) (and (forall ((addr@@57 Int) ) (!  (=> (|$IsValid'address'| addr@@57) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_79648| $1_Roles_RoleId_$memory) addr@@57) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_79648| $1_Roles_RoleId_$memory) addr@@57)) 3)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_79648| $1_Roles_RoleId_$memory) addr@@57) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_79648| $1_Roles_RoleId_$memory) addr@@57)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_79648| $1_Roles_RoleId_$memory) addr@@57) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_79648| $1_Roles_RoleId_$memory) addr@@57)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_79648| $1_Roles_RoleId_$memory) addr@@57) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_79648| $1_Roles_RoleId_$memory) addr@@57)) 2))))))
 :qid |DesignatedDealerbpl.7327:20|
 :skolemid |335|
)) (forall ((addr@@58 Int) ) (!  (=> (|$IsValid'address'| addr@@58) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_79648| $1_Roles_RoleId_$memory) addr@@58) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_79648| $1_Roles_RoleId_$memory) addr@@58)) 4)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_79648| $1_Roles_RoleId_$memory) addr@@58) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_79648| $1_Roles_RoleId_$memory) addr@@58)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_79648| $1_Roles_RoleId_$memory) addr@@58) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_79648| $1_Roles_RoleId_$memory) addr@@58)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_79648| $1_Roles_RoleId_$memory) addr@@58) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_79648| $1_Roles_RoleId_$memory) addr@@58)) 2))))))
 :qid |DesignatedDealerbpl.7331:20|
 :skolemid |336|
)))) (and (and (forall ((addr@@59 Int) ) (!  (=> (|$IsValid'address'| addr@@59) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_79648| $1_Roles_RoleId_$memory) addr@@59) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_79648| $1_Roles_RoleId_$memory) addr@@59)) 2)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_79648| $1_Roles_RoleId_$memory) addr@@59) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_79648| $1_Roles_RoleId_$memory) addr@@59)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_79648| $1_Roles_RoleId_$memory) addr@@59) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_79648| $1_Roles_RoleId_$memory) addr@@59)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_79648| $1_Roles_RoleId_$memory) addr@@59) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_79648| $1_Roles_RoleId_$memory) addr@@59)) 2)))))
 :qid |DesignatedDealerbpl.7335:20|
 :skolemid |337|
)) (forall ((addr@@60 Int) ) (!  (=> (|$IsValid'address'| addr@@60) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_79648| $1_Roles_RoleId_$memory) addr@@60) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_79648| $1_Roles_RoleId_$memory) addr@@60)) 5)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_79648| $1_Roles_RoleId_$memory) addr@@60) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_79648| $1_Roles_RoleId_$memory) addr@@60)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_79648| $1_Roles_RoleId_$memory) addr@@60) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_79648| $1_Roles_RoleId_$memory) addr@@60)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_79648| $1_Roles_RoleId_$memory) addr@@60) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_79648| $1_Roles_RoleId_$memory) addr@@60)) 2)))))
 :qid |DesignatedDealerbpl.7339:20|
 :skolemid |338|
))) (and (forall ((addr@@61 Int) ) (!  (=> (|$IsValid'address'| addr@@61) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_79648| $1_Roles_RoleId_$memory) addr@@61) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_79648| $1_Roles_RoleId_$memory) addr@@61)) 6)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_79648| $1_Roles_RoleId_$memory) addr@@61) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_79648| $1_Roles_RoleId_$memory) addr@@61)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_79648| $1_Roles_RoleId_$memory) addr@@61) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_79648| $1_Roles_RoleId_$memory) addr@@61)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_79648| $1_Roles_RoleId_$memory) addr@@61) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_79648| $1_Roles_RoleId_$memory) addr@@61)) 2)))))
 :qid |DesignatedDealerbpl.7343:20|
 :skolemid |339|
)) (forall ((addr@@62 Int) ) (!  (=> (|$IsValid'address'| addr@@62) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_79975| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@62) (and (|Select__T@[Int]Bool_| (|domain#$Memory_79648| $1_Roles_RoleId_$memory) addr@@62) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_79648| $1_Roles_RoleId_$memory) addr@@62)) 4))))
 :qid |DesignatedDealerbpl.7347:20|
 :skolemid |340|
))))) (=> (and (and (and (and (forall ((addr@@63 Int) ) (!  (=> (|$IsValid'address'| addr@@63) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_80391| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@63) (and (|Select__T@[Int]Bool_| (|domain#$Memory_79648| $1_Roles_RoleId_$memory) addr@@63) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_79648| $1_Roles_RoleId_$memory) addr@@63)) 3))))
 :qid |DesignatedDealerbpl.7351:20|
 :skolemid |341|
)) (forall ((addr@@64 Int) ) (!  (=> (|$IsValid'address'| addr@@64) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_80391| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@64) (and (|Select__T@[Int]Bool_| (|domain#$Memory_79648| $1_Roles_RoleId_$memory) addr@@64) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_79648| $1_Roles_RoleId_$memory) addr@@64)) 3))))
 :qid |DesignatedDealerbpl.7355:20|
 :skolemid |342|
))) (and (forall ((addr@@65 Int) ) (!  (=> (|$IsValid'address'| addr@@65) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_80391| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@65) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_80391| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@65)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_79648| $1_Roles_RoleId_$memory) addr@@65) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_79648| $1_Roles_RoleId_$memory) addr@@65)) 3))))
 :qid |DesignatedDealerbpl.7359:20|
 :skolemid |343|
)) (let (($range_0 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@66 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_80935| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@66))))))))
(forall (($i_1 Int) ) (!  (=> ($InRange $range_0 $i_1) (let ((i1 $i_1))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_79648| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@67 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_80935| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@67)))) i1))) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_79648| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@67 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_80935| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@67)))) i1)))) 3))))
 :qid |DesignatedDealerbpl.7363:151|
 :skolemid |344|
))))) (and (and (forall ((mint_cap_owner Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_82212| |$1_Diem_MintCapability'#0'_$memory|) mint_cap_owner) (and (|Select__T@[Int]Bool_| (|domain#$Memory_79648| $1_Roles_RoleId_$memory) mint_cap_owner) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_79648| $1_Roles_RoleId_$memory) mint_cap_owner)) 1))))
 :qid |DesignatedDealerbpl.7368:20|
 :skolemid |345|
)) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_81686| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_81686| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (forall ((mint_cap_owner1@@2 Int) (mint_cap_owner2@@2 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner1@@2) (=> (|$IsValid'address'| mint_cap_owner2@@2) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_82212| |$1_Diem_MintCapability'#0'_$memory|) mint_cap_owner1@@2) (|Select__T@[Int]Bool_| (|domain#$Memory_82212| |$1_Diem_MintCapability'#0'_$memory|) mint_cap_owner2@@2)) (= mint_cap_owner1@@2 mint_cap_owner2@@2))))
 :qid |DesignatedDealerbpl.7372:88|
 :skolemid |346|
)))) (and (forall ((addr3@@2 Int) ) (!  (=> (|$IsValid'address'| addr3@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_82212| |$1_Diem_MintCapability'#0'_$memory|) addr3@@2) (and (|Select__T@[Int]Bool_| (|domain#$Memory_81686| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_81686| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))))
 :qid |DesignatedDealerbpl.7376:20|
 :skolemid |347|
)) (forall ((addr@@68 Int) ) (!  (=> (|$IsValid'address'| addr@@68) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_87480| |$1_Diem_Preburn'#0'_$memory|) addr@@68) (|Select__T@[Int]Bool_| (|domain#$Memory_81686| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |DesignatedDealerbpl.7380:20|
 :skolemid |348|
))))) (and (and (and (forall ((addr1@@4 Int) ) (!  (=> (|$IsValid'address'| addr1@@4) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_91467| $1_DualAttestation_Credential_$memory) addr1@@4) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_79648| $1_Roles_RoleId_$memory) addr1@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_79648| $1_Roles_RoleId_$memory) addr1@@4)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_79648| $1_Roles_RoleId_$memory) addr1@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_79648| $1_Roles_RoleId_$memory) addr1@@4)) 2)))))
 :qid |DesignatedDealerbpl.7384:20|
 :skolemid |349|
)) (forall ((addr@@69 Int) ) (!  (=> (|$IsValid'address'| addr@@69) (= (|Select__T@[Int]Bool_| (|domain#$Memory_97160| $1_DiemAccount_DiemAccount_$memory) addr@@69) (|Select__T@[Int]Bool_| (|domain#$Memory_79648| $1_Roles_RoleId_$memory) addr@@69)))
 :qid |DesignatedDealerbpl.7388:20|
 :skolemid |350|
))) (and (forall ((addr@@70 Int) ) (!  (=> (|$IsValid'address'| addr@@70) (= (|Select__T@[Int]Bool_| (|domain#$Memory_91091| $1_VASPDomain_VASPDomainManager_$memory) addr@@70)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_79648| $1_Roles_RoleId_$memory) addr@@70) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_79648| $1_Roles_RoleId_$memory) addr@@70)) 1))))
 :qid |DesignatedDealerbpl.7392:20|
 :skolemid |351|
)) (forall ((addr@@71 Int) ) (!  (=> (|$IsValid'address'| addr@@71) (= (|Select__T@[Int]Bool_| (|domain#$Memory_91190| $1_VASPDomain_VASPDomains_$memory) addr@@71)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_79648| $1_Roles_RoleId_$memory) addr@@71) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_79648| $1_Roles_RoleId_$memory) addr@@71)) 5))))
 :qid |DesignatedDealerbpl.7396:20|
 :skolemid |352|
)))) (and (and (forall ((addr@@72 Int) ) (!  (=> (|$IsValid'address'| addr@@72) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_93760| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@72) (|Select__T@[Int]Bool_| (|domain#$Memory_93820| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@72)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_79648| $1_Roles_RoleId_$memory) addr@@72) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_79648| $1_Roles_RoleId_$memory) addr@@72)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_79648| $1_Roles_RoleId_$memory) addr@@72) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_79648| $1_Roles_RoleId_$memory) addr@@72)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_79648| $1_Roles_RoleId_$memory) addr@@72) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_79648| $1_Roles_RoleId_$memory) addr@@72)) 2)))))
 :qid |DesignatedDealerbpl.7400:20|
 :skolemid |353|
)) (forall ((addr@@73 Int) ) (!  (=> (|$IsValid'address'| addr@@73) (= (|Select__T@[Int]Bool_| (|domain#$Memory_92161| $1_DesignatedDealer_Dealer_$memory) addr@@73)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_79648| $1_Roles_RoleId_$memory) addr@@73) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_79648| $1_Roles_RoleId_$memory) addr@@73)) 2))))
 :qid |DesignatedDealerbpl.7404:20|
 :skolemid |354|
))) (and (forall ((addr@@74 Int) ) (!  (=> (|$IsValid'address'| addr@@74) (= (|Select__T@[Int]Bool_| (|domain#$Memory_91467| $1_DualAttestation_Credential_$memory) addr@@74)  (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_79648| $1_Roles_RoleId_$memory) addr@@74) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_79648| $1_Roles_RoleId_$memory) addr@@74)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_79648| $1_Roles_RoleId_$memory) addr@@74) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_79648| $1_Roles_RoleId_$memory) addr@@74)) 5)))))
 :qid |DesignatedDealerbpl.7408:20|
 :skolemid |355|
)) (forall ((addr@@75 Int) ) (!  (=> (|$IsValid'address'| addr@@75) (= (|Select__T@[Int]Bool_| (|domain#$Memory_80902| $1_SlidingNonce_SlidingNonce_$memory) addr@@75)  (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_79648| $1_Roles_RoleId_$memory) addr@@75) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_79648| $1_Roles_RoleId_$memory) addr@@75)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_79648| $1_Roles_RoleId_$memory) addr@@75) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_79648| $1_Roles_RoleId_$memory) addr@@75)) 1)))))
 :qid |DesignatedDealerbpl.7412:20|
 :skolemid |356|
)))))) (=> (and (and (and (and (and (forall ((addr@@76 Int) ) (!  (=> (|$IsValid'address'| addr@@76) (= (|Select__T@[Int]Bool_| (|domain#$Memory_80391| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@76)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_79648| $1_Roles_RoleId_$memory) addr@@76) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_79648| $1_Roles_RoleId_$memory) addr@@76)) 3))))
 :qid |DesignatedDealerbpl.7416:20|
 :skolemid |357|
)) (forall ((addr@@77 Int) ) (!  (=> (|$IsValid'address'| addr@@77) (= (|Select__T@[Int]Bool_| (|domain#$Memory_79975| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@77)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_79648| $1_Roles_RoleId_$memory) addr@@77) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_79648| $1_Roles_RoleId_$memory) addr@@77)) 4))))
 :qid |DesignatedDealerbpl.7420:20|
 :skolemid |358|
))) (and (forall ((addr@@78 Int) ) (!  (=> (|$IsValid'address'| addr@@78) (= (|Select__T@[Int]Bool_| (|domain#$Memory_91287| $1_VASP_ParentVASP_$memory) addr@@78)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_79648| $1_Roles_RoleId_$memory) addr@@78) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_79648| $1_Roles_RoleId_$memory) addr@@78)) 5))))
 :qid |DesignatedDealerbpl.7424:20|
 :skolemid |359|
)) (forall ((addr@@79 Int) ) (!  (=> (|$IsValid'address'| addr@@79) (= (|Select__T@[Int]Bool_| (|domain#$Memory_91223| $1_VASP_ChildVASP_$memory) addr@@79)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_79648| $1_Roles_RoleId_$memory) addr@@79) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_79648| $1_Roles_RoleId_$memory) addr@@79)) 6))))
 :qid |DesignatedDealerbpl.7428:20|
 :skolemid |360|
)))) (and (and (|$IsValid'address'| (|$addr#$signer| _$t0@@2)) ($1_Signer_is_txn_signer _$t0@@2)) ($1_Signer_is_txn_signer_addr (|$addr#$signer| _$t0@@2)))) (and (and (and (|$IsValid'u64'| _$t1@@1) (|$IsValid'address'| _$t2@@0)) (and (|$IsValid'u64'| _$t3) (forall (($a_0@@13 Int) ) (! (let (($rsc@@13 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_79648| $1_Roles_RoleId_$memory) $a_0@@13)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@13))
 :qid |DesignatedDealerbpl.7444:20|
 :skolemid |361|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_79648| $1_Roles_RoleId_$memory) $a_0@@13))
)))) (and (and (forall (($a_0@@14 Int) ) (! (let (($rsc@@14 (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_81686| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0@@14)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'#0''| $rsc@@14) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc@@14)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc@@14) 10000000000))))
 :qid |DesignatedDealerbpl.7448:20|
 :skolemid |362|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_81686| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0@@14))
)) (forall (($a_0@@15 Int) ) (! (let (($rsc@@15 (|Select__T@[Int]$1_Diem_MintCapability'#0'_| (|contents#$Memory_82212| |$1_Diem_MintCapability'#0'_$memory|) $a_0@@15)))
(|$IsValid'$1_Diem_MintCapability'#0''| $rsc@@15))
 :qid |DesignatedDealerbpl.7452:20|
 :skolemid |363|
 :pattern ( (|Select__T@[Int]$1_Diem_MintCapability'#0'_| (|contents#$Memory_82212| |$1_Diem_MintCapability'#0'_$memory|) $a_0@@15))
))) (and (forall (($a_0@@16 Int) ) (! (let (($rsc@@16 (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_92161| $1_DesignatedDealer_Dealer_$memory) $a_0@@16)))
(|$IsValid'$1_DesignatedDealer_Dealer'| $rsc@@16))
 :qid |DesignatedDealerbpl.7456:20|
 :skolemid |364|
 :pattern ( (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_92161| $1_DesignatedDealer_Dealer_$memory) $a_0@@16))
)) (forall (($a_0@@17 Int) ) (! (let (($rsc@@17 (|Select__T@[Int]$1_DesignatedDealer_TierInfo'#0'_| (|contents#$Memory_92802| |$1_DesignatedDealer_TierInfo'#0'_$memory|) $a_0@@17)))
(|$IsValid'$1_DesignatedDealer_TierInfo'#0''| $rsc@@17))
 :qid |DesignatedDealerbpl.7460:20|
 :skolemid |365|
 :pattern ( (|Select__T@[Int]$1_DesignatedDealer_TierInfo'#0'_| (|contents#$Memory_92802| |$1_DesignatedDealer_TierInfo'#0'_$memory|) $a_0@@17))
)))))) (and (and (and (and (= $t8@@1 (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_81686| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= $t9@@1 (|$addr#$signer| _$t0@@2))) (and (= $t10@@1 (|$mint_event_handle#$1_DesignatedDealer_Dealer| (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_92161| $1_DesignatedDealer_Dealer_$memory) _$t2@@0))) (= $t11@@1 ($1_DesignatedDealer_ReceivedMintEvent (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_81686| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) _$t2@@0 _$t1@@1)))) (and (and (= $t12@@1 (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_81686| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= $t13@@0 (|$mint_events#$1_Diem_CurrencyInfo'#0'| $t12@@1))) (and (= $t14@@0 ($1_Diem_MintEvent _$t1@@1 (|$currency_code#$1_Diem_CurrencyInfo'#0'| $t12@@1))) (|Select__T@[Int]Bool_| $1_DesignatedDealer_Dealer_$modifies@@0 _$t2@@0)))) (and (and (and (|Select__T@[Int]Bool_| |$1_Diem_CurrencyInfo'#0'_$modifies| 173345816) (|Select__T@[Int]Bool_| |$1_DesignatedDealer_TierInfo'#0'_$modifies| _$t2@@0)) (and (= _$t0@@2 _$t0@@2) (= _$t1@@1 _$t1@@1))) (and (and (= _$t2@@0 _$t2@@0) (= _$t3 _$t3)) (and (= $t15@@0 (|$addr#$signer| _$t0@@2)) (= $t16@@0  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_79648| $1_Roles_RoleId_$memory) $t15@@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_79648| $1_Roles_RoleId_$memory) $t15@@0)) 1))) (not (= (|$addr#$signer| _$t0@@2) 186537453))))))))) (and (=> (= (ControlFlow 0 134430) 136865) anon30_Then_correct@@0) (=> (= (ControlFlow 0 134430) 134490) anon30_Else_correct@@0))))))))
(let ((inline$$InitEventStore$0$anon0_correct@@2  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@9 T@$1_Event_EventHandle) ) (! (let ((stream@@13 (|Select__T@[$1_Event_EventHandle]Multiset_52020_| (|streams#$EventStore| $es) handle@@9)))
 (and (= (|l#Multiset_52020| stream@@13) 0) (forall ((v@@45 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_52020| stream@@13) v@@45) 0)
 :qid |DesignatedDealerbpl.134:13|
 :skolemid |2|
))))
 :qid |DesignatedDealerbpl.2732:13|
 :skolemid |74|
))) (= (ControlFlow 0 133268) 134430)) anon0$1_correct@@2)))
(let ((anon0_correct@@2  (=> (= (seq.len (|p#$Mutation_108601| $t30)) 0) (=> (and (= (seq.len (|p#$Mutation_75530| $t31)) 0) (= (ControlFlow 0 133278) 133268)) inline$$InitEventStore$0$anon0_correct@@2))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 155644) 133278) anon0_correct@@2)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
