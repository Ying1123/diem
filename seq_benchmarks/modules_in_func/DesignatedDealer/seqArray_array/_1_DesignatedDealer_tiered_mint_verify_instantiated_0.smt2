(set-option :print-success false)
(set-option :pre-skolem-quant true)
(set-option :dt-share-sel false)
(set-option :ee-mode central)
(set-info :smt-lib-version 2.6)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_82348 0)) ((($Memory_82348 (|domain#$Memory_82348| |T@[Int]Bool|) (|contents#$Memory_82348| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_101340 0)) ((($Memory_101340 (|domain#$Memory_101340| |T@[Int]Bool|) (|contents#$Memory_101340| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_100305 0)) ((($Memory_100305 (|domain#$Memory_100305| |T@[Int]Bool|) (|contents#$Memory_100305| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_100241 0)) ((($Memory_100241 (|domain#$Memory_100241| |T@[Int]Bool|) (|contents#$Memory_100241| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_100091 0)) ((($Memory_100091 (|domain#$Memory_100091| |T@[Int]Bool|) (|contents#$Memory_100091| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'#0'| 0)) (((|$1_Diem_MintCapability'#0'| (|$dummy_field#$1_Diem_MintCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'#0'| 0)
(declare-datatypes ((T@$Memory_90368 0)) ((($Memory_90368 (|domain#$Memory_90368| |T@[Int]Bool|) (|contents#$Memory_90368| |T@[Int]$1_Diem_MintCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_90304 0)) ((($Memory_90304 (|domain#$Memory_90304| |T@[Int]Bool|) (|contents#$Memory_90304| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_90240 0)) ((($Memory_90240 (|domain#$Memory_90240| |T@[Int]Bool|) (|contents#$Memory_90240| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'#0'| 0)) (((|$1_Diem_Diem'#0'| (|$value#$1_Diem_Diem'#0'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'#0'| 0)) (((|$1_Diem_Preburn'#0'| (|$to_burn#$1_Diem_Preburn'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'#0'| 0)
(declare-datatypes ((T@$Memory_96388 0)) ((($Memory_96388 (|domain#$Memory_96388| |T@[Int]Bool|) (|contents#$Memory_96388| |T@[Int]$1_Diem_Preburn'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_103160 0)) ((($Memory_103160 (|domain#$Memory_103160| |T@[Int]Bool|) (|contents#$Memory_103160| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_96307 0)) ((($Memory_96307 (|domain#$Memory_96307| |T@[Int]Bool|) (|contents#$Memory_96307| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_103100 0)) ((($Memory_103100 (|domain#$Memory_103100| |T@[Int]Bool|) (|contents#$Memory_103100| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_96226 0)) ((($Memory_96226 (|domain#$Memory_96226| |T@[Int]Bool|) (|contents#$Memory_96226| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_89007 0)) ((($Memory_89007 (|domain#$Memory_89007| |T@[Int]Bool|) (|contents#$Memory_89007| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_WithdrawCapability| 0)
(declare-datatypes ((T@Vec_53863 0)) (((Vec_53863 (|v#Vec_53863| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#Vec_53863| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| T@Vec_53863) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_KeyRotationCapability| 0)
(declare-datatypes ((T@Vec_53824 0)) (((Vec_53824 (|v#Vec_53824| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#Vec_53824| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| T@Vec_53824) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_19166 0)) (((Vec_19166 (|v#Vec_19166| |T@[Int]Int|) (|l#Vec_19166| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| T@Vec_19166) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_106494 0)) ((($Memory_106494 (|domain#$Memory_106494| |T@[Int]Bool|) (|contents#$Memory_106494| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((|T@$1_DesignatedDealer_TierInfo'#0'| 0)) (((|$1_DesignatedDealer_TierInfo'#0'| (|$window_start#$1_DesignatedDealer_TierInfo'#0'| Int) (|$window_inflow#$1_DesignatedDealer_TierInfo'#0'| Int) (|$tiers#$1_DesignatedDealer_TierInfo'#0'| T@Vec_19166) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_TierInfo'#0'| 0)
(declare-datatypes ((T@$Memory_102142 0)) ((($Memory_102142 (|domain#$Memory_102142| |T@[Int]Bool|) (|contents#$Memory_102142| |T@[Int]$1_DesignatedDealer_TierInfo'#0'|) ) ) ))
(declare-datatypes ((|T@$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| 0)) (((|$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| (|$window_start#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| Int) (|$window_inflow#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| Int) (|$tiers#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| T@Vec_19166) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_101919 0)) ((($Memory_101919 (|domain#$Memory_101919| |T@[Int]Bool|) (|contents#$Memory_101919| |T@[Int]$1_DesignatedDealer_TierInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| 0)) (((|$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| (|$window_start#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| Int) (|$window_inflow#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| Int) (|$tiers#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| T@Vec_19166) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_101696 0)) ((($Memory_101696 (|domain#$Memory_101696| |T@[Int]Bool|) (|contents#$Memory_101696| |T@[Int]$1_DesignatedDealer_TierInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| T@Vec_19166) (|$base_url#$1_DualAttestation_Credential| T@Vec_19166) (|$compliance_public_key#$1_DualAttestation_Credential| T@Vec_19166) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_100485 0)) ((($Memory_100485 (|domain#$Memory_100485| |T@[Int]Bool|) (|contents#$Memory_100485| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| T@Vec_19166) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomain| 0)
(declare-datatypes ((T@Vec_54333 0)) (((Vec_54333 (|v#Vec_54333| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#Vec_54333| Int) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomains 0)) ((($1_VASPDomain_VASPDomains (|$domains#$1_VASPDomain_VASPDomains| T@Vec_54333) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomains| 0)
(declare-datatypes ((T@$Memory_100208 0)) ((($Memory_100208 (|domain#$Memory_100208| |T@[Int]Bool|) (|contents#$Memory_100208| |T@[Int]$1_VASPDomain_VASPDomains|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'#0'| 0)) (((|$1_Diem_PreburnWithMetadata'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| |T@$1_Diem_Preburn'#0'|) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| T@Vec_19166) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'#0'| 0)
(declare-datatypes ((T@Vec_54231 0)) (((Vec_54231 (|v#Vec_54231| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#Vec_54231| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'#0'| 0)) (((|$1_Diem_PreburnQueue'#0'| (|$preburns#$1_Diem_PreburnQueue'#0'| T@Vec_54231) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'#0'| 0)
(declare-datatypes ((T@$Memory_96872 0)) ((($Memory_96872 (|domain#$Memory_96872| |T@[Int]Bool|) (|contents#$Memory_96872| |T@[Int]$1_Diem_PreburnQueue'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| T@Vec_19166) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)
(declare-datatypes ((T@Vec_54192 0)) (((Vec_54192 (|v#Vec_54192| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#Vec_54192| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| T@Vec_54192) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_96755 0)) ((($Memory_96755 (|domain#$Memory_96755| |T@[Int]Bool|) (|contents#$Memory_96755| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| T@Vec_19166) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)
(declare-datatypes ((T@Vec_54153 0)) (((Vec_54153 (|v#Vec_54153| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#Vec_54153| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| T@Vec_54153) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_96638 0)) ((($Memory_96638 (|domain#$Memory_96638| |T@[Int]Bool|) (|contents#$Memory_96638| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'#0'| 0)) (((|$1_Diem_CurrencyInfo'#0'| (|$total_value#$1_Diem_CurrencyInfo'#0'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| Int) (|$currency_code#$1_Diem_CurrencyInfo'#0'| T@Vec_19166) (|$can_mint#$1_Diem_CurrencyInfo'#0'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'#0'| 0)
(declare-datatypes ((T@$Memory_89836 0)) ((($Memory_89836 (|domain#$Memory_89836| |T@[Int]Bool|) (|contents#$Memory_89836| |T@[Int]$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@Vec_19166) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_89717 0)) ((($Memory_89717 (|domain#$Memory_89717| |T@[Int]Bool|) (|contents#$Memory_89717| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@Vec_19166) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_89598 0)) ((($Memory_89598 (|domain#$Memory_89598| |T@[Int]Bool|) (|contents#$Memory_89598| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| T@Vec_19166) (|$validator_network_addresses#$1_ValidatorConfig_Config| T@Vec_19166) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| T@Vec_19166) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_Config| 0)
(declare-datatypes ((T@Vec_53785 0)) (((Vec_53785 (|v#Vec_53785| |T@[Int]$1_ValidatorConfig_Config|) (|l#Vec_53785| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| T@Vec_53785) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_ValidatorInfo| 0)
(declare-datatypes ((T@Vec_53941 0)) (((Vec_53941 (|v#Vec_53941| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#Vec_53941| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| T@Vec_53941) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_89040 0)) ((($Memory_89040 (|domain#$Memory_89040| |T@[Int]Bool|) (|contents#$Memory_89040| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| T@Vec_19166) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| T@Vec_19166) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_88421 0)) ((($Memory_88421 (|domain#$Memory_88421| |T@[Int]Bool|) (|contents#$Memory_88421| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| T@Vec_19166) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_87918 0)) ((($Memory_87918 (|domain#$Memory_87918| |T@[Int]Bool|) (|contents#$Memory_87918| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_87591 0)) ((($Memory_87591 (|domain#$Memory_87591| |T@[Int]Bool|) (|contents#$Memory_87591| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_87469 0)) ((($Memory_87469 (|domain#$Memory_87469| |T@[Int]Bool|) (|contents#$Memory_87469| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainEvent 0)) ((($1_VASPDomain_VASPDomainEvent (|$removed#$1_VASPDomain_VASPDomainEvent| Bool) (|$domain#$1_VASPDomain_VASPDomainEvent| T@$1_VASPDomain_VASPDomain) (|$address#$1_VASPDomain_VASPDomainEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_ComplianceKeyRotationEvent 0)) ((($1_DualAttestation_ComplianceKeyRotationEvent (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| T@Vec_19166) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_BaseUrlRotationEvent 0)) ((($1_DualAttestation_BaseUrlRotationEvent (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| T@Vec_19166) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_ToXDXExchangeRateUpdateEvent 0)) ((($1_Diem_ToXDXExchangeRateUpdateEvent (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| T@Vec_19166) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_PreburnEvent 0)) ((($1_Diem_PreburnEvent (|$amount#$1_Diem_PreburnEvent| Int) (|$currency_code#$1_Diem_PreburnEvent| T@Vec_19166) (|$preburn_address#$1_Diem_PreburnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_MintEvent 0)) ((($1_Diem_MintEvent (|$amount#$1_Diem_MintEvent| Int) (|$currency_code#$1_Diem_MintEvent| T@Vec_19166) ) ) ))
(declare-datatypes ((T@$1_Diem_CancelBurnEvent 0)) ((($1_Diem_CancelBurnEvent (|$amount#$1_Diem_CancelBurnEvent| Int) (|$currency_code#$1_Diem_CancelBurnEvent| T@Vec_19166) (|$preburn_address#$1_Diem_CancelBurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_BurnEvent 0)) ((($1_Diem_BurnEvent (|$amount#$1_Diem_BurnEvent| Int) (|$currency_code#$1_Diem_BurnEvent| T@Vec_19166) (|$preburn_address#$1_Diem_BurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_SentPaymentEvent 0)) ((($1_DiemAccount_SentPaymentEvent (|$amount#$1_DiemAccount_SentPaymentEvent| Int) (|$currency_code#$1_DiemAccount_SentPaymentEvent| T@Vec_19166) (|$payee#$1_DiemAccount_SentPaymentEvent| Int) (|$metadata#$1_DiemAccount_SentPaymentEvent| T@Vec_19166) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_ReceivedPaymentEvent 0)) ((($1_DiemAccount_ReceivedPaymentEvent (|$amount#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_19166) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_19166) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_ReceivedMintEvent 0)) ((($1_DesignatedDealer_ReceivedMintEvent (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| T@Vec_19166) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| Int) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| (|e#$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| T@$1_DesignatedDealer_ReceivedMintEvent) ) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| T@$1_DiemAccount_ReceivedPaymentEvent) ) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_SentPaymentEvent'| T@$1_DiemAccount_SentPaymentEvent) ) (|$ToEventRep'$1_Diem_BurnEvent'| (|e#$ToEventRep'$1_Diem_BurnEvent'| T@$1_Diem_BurnEvent) ) (|$ToEventRep'$1_Diem_CancelBurnEvent'| (|e#$ToEventRep'$1_Diem_CancelBurnEvent'| T@$1_Diem_CancelBurnEvent) ) (|$ToEventRep'$1_Diem_MintEvent'| (|e#$ToEventRep'$1_Diem_MintEvent'| T@$1_Diem_MintEvent) ) (|$ToEventRep'$1_Diem_PreburnEvent'| (|e#$ToEventRep'$1_Diem_PreburnEvent'| T@$1_Diem_PreburnEvent) ) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| (|e#$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| T@$1_DualAttestation_BaseUrlRotationEvent) ) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| (|e#$ToEventRep'$1_VASPDomain_VASPDomainEvent'| T@$1_VASPDomain_VASPDomainEvent) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_53699 0)) (((Multiset_53699 (|v#Multiset_53699| |T@[$EventRep]Int|) (|l#Multiset_53699| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_53699| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_53699|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_117917 0)) ((($Mutation_117917 (|l#$Mutation_117917| T@$Location) (|p#$Mutation_117917| T@Vec_19166) (|v#$Mutation_117917| T@$1_DesignatedDealer_Dealer) ) ) ))
(declare-datatypes ((T@$Mutation_83026 0)) ((($Mutation_83026 (|l#$Mutation_83026| T@$Location) (|p#$Mutation_83026| T@Vec_19166) (|v#$Mutation_83026| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_12729 0)) ((($Mutation_12729 (|l#$Mutation_12729| T@$Location) (|p#$Mutation_12729| T@Vec_19166) (|v#$Mutation_12729| Int) ) ) ))
(declare-datatypes ((T@$Mutation_77507 0)) ((($Mutation_77507 (|l#$Mutation_77507| T@$Location) (|p#$Mutation_77507| T@Vec_19166) (|v#$Mutation_77507| T@Vec_19166) ) ) ))
(declare-datatypes ((T@$Mutation_75930 0)) ((($Mutation_75930 (|l#$Mutation_75930| T@$Location) (|p#$Mutation_75930| T@Vec_19166) (|v#$Mutation_75930| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_74943 0)) ((($Mutation_74943 (|l#$Mutation_74943| T@$Location) (|p#$Mutation_74943| T@Vec_19166) (|v#$Mutation_74943| T@Vec_53785) ) ) ))
(declare-datatypes ((T@$Mutation_73288 0)) ((($Mutation_73288 (|l#$Mutation_73288| T@$Location) (|p#$Mutation_73288| T@Vec_19166) (|v#$Mutation_73288| T@$1_VASPDomain_VASPDomain) ) ) ))
(declare-datatypes ((T@$Mutation_72301 0)) ((($Mutation_72301 (|l#$Mutation_72301| T@$Location) (|p#$Mutation_72301| T@Vec_19166) (|v#$Mutation_72301| T@Vec_54333) ) ) ))
(declare-datatypes ((T@$Mutation_70623 0)) ((($Mutation_70623 (|l#$Mutation_70623| T@$Location) (|p#$Mutation_70623| T@Vec_19166) (|v#$Mutation_70623| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_69636 0)) ((($Mutation_69636 (|l#$Mutation_69636| T@$Location) (|p#$Mutation_69636| T@Vec_19166) (|v#$Mutation_69636| T@Vec_54153) ) ) ))
(declare-datatypes ((T@$Mutation_67927 0)) ((($Mutation_67927 (|l#$Mutation_67927| T@$Location) (|p#$Mutation_67927| T@Vec_19166) (|v#$Mutation_67927| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_66940 0)) ((($Mutation_66940 (|l#$Mutation_66940| T@$Location) (|p#$Mutation_66940| T@Vec_19166) (|v#$Mutation_66940| T@Vec_54192) ) ) ))
(declare-datatypes ((T@$Mutation_65231 0)) ((($Mutation_65231 (|l#$Mutation_65231| T@$Location) (|p#$Mutation_65231| T@Vec_19166) (|v#$Mutation_65231| |T@$1_Diem_PreburnWithMetadata'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_64244 0)) ((($Mutation_64244 (|l#$Mutation_64244| T@$Location) (|p#$Mutation_64244| T@Vec_19166) (|v#$Mutation_64244| T@Vec_54231) ) ) ))
(declare-datatypes ((T@$Mutation_62535 0)) ((($Mutation_62535 (|l#$Mutation_62535| T@$Location) (|p#$Mutation_62535| T@Vec_19166) (|v#$Mutation_62535| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_61548 0)) ((($Mutation_61548 (|l#$Mutation_61548| T@$Location) (|p#$Mutation_61548| T@Vec_19166) (|v#$Mutation_61548| T@Vec_53941) ) ) ))
(declare-datatypes ((T@$Mutation_59748 0)) ((($Mutation_59748 (|l#$Mutation_59748| T@$Location) (|p#$Mutation_59748| T@Vec_19166) (|v#$Mutation_59748| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_58761 0)) ((($Mutation_58761 (|l#$Mutation_58761| T@$Location) (|p#$Mutation_58761| T@Vec_19166) (|v#$Mutation_58761| T@Vec_53863) ) ) ))
(declare-datatypes ((T@$Mutation_57048 0)) ((($Mutation_57048 (|l#$Mutation_57048| T@$Location) (|p#$Mutation_57048| T@Vec_19166) (|v#$Mutation_57048| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_56061 0)) ((($Mutation_56061 (|l#$Mutation_56061| T@$Location) (|p#$Mutation_56061| T@Vec_19166) (|v#$Mutation_56061| T@Vec_53824) ) ) ))
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
(declare-fun |$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_53824 T@Vec_53824) Bool)
(declare-fun InRangeVec_46858 (T@Vec_53824 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|T@[Int]$1_DiemAccount_KeyRotationCapability| Int) T@$1_DiemAccount_KeyRotationCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_53824) Bool)
(declare-fun |$IsValid'$1_DiemAccount_KeyRotationCapability'| (T@$1_DiemAccount_KeyRotationCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| (T@Vec_53824 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_53863 T@Vec_53863) Bool)
(declare-fun InRangeVec_47059 (T@Vec_53863 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|T@[Int]$1_DiemAccount_WithdrawCapability| Int) T@$1_DiemAccount_WithdrawCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_53863) Bool)
(declare-fun |$IsValid'$1_DiemAccount_WithdrawCapability'| (T@$1_DiemAccount_WithdrawCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_WithdrawCapability'| (T@Vec_53863 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_53941 T@Vec_53941) Bool)
(declare-fun InRangeVec_47260 (T@Vec_53941 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|T@[Int]$1_DiemSystem_ValidatorInfo| Int) T@$1_DiemSystem_ValidatorInfo)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_19166 T@Vec_19166) Bool)
(declare-fun |$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_53941) Bool)
(declare-fun |$IsValid'$1_DiemSystem_ValidatorInfo'| (T@$1_DiemSystem_ValidatorInfo) Bool)
(declare-fun |$IndexOfVec'$1_DiemSystem_ValidatorInfo'| (T@Vec_53941 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'#0'''| (T@Vec_54231 T@Vec_54231) Bool)
(declare-fun InRangeVec_47461 (T@Vec_54231 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|T@[Int]$1_Diem_PreburnWithMetadata'#0'| Int) |T@$1_Diem_PreburnWithMetadata'#0'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| (T@Vec_54231) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'#0''| (|T@$1_Diem_PreburnWithMetadata'#0'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| (T@Vec_54231 |T@$1_Diem_PreburnWithMetadata'#0'|) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (T@Vec_54192 T@Vec_54192) Bool)
(declare-fun InRangeVec_47662 (T@Vec_54192 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| Int) |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (T@Vec_54192) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (T@Vec_54192 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (T@Vec_54153 T@Vec_54153) Bool)
(declare-fun InRangeVec_47863 (T@Vec_54153 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| Int) |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (T@Vec_54153) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (T@Vec_54153 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Int)
(declare-fun |$IsEqual'vec'$1_VASPDomain_VASPDomain''| (T@Vec_54333 T@Vec_54333) Bool)
(declare-fun InRangeVec_48064 (T@Vec_54333 Int) Bool)
(declare-fun |Select__T@[Int]$1_VASPDomain_VASPDomain_| (|T@[Int]$1_VASPDomain_VASPDomain| Int) T@$1_VASPDomain_VASPDomain)
(declare-fun |$IsValid'vec'$1_VASPDomain_VASPDomain''| (T@Vec_54333) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomain'| (T@$1_VASPDomain_VASPDomain) Bool)
(declare-fun |$IndexOfVec'$1_VASPDomain_VASPDomain'| (T@Vec_54333 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun |$IsEqual'vec'$1_ValidatorConfig_Config''| (T@Vec_53785 T@Vec_53785) Bool)
(declare-fun InRangeVec_48265 (T@Vec_53785 Int) Bool)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_Config_| (|T@[Int]$1_ValidatorConfig_Config| Int) T@$1_ValidatorConfig_Config)
(declare-fun |$IsValid'vec'$1_ValidatorConfig_Config''| (T@Vec_53785) Bool)
(declare-fun |$IsValid'$1_ValidatorConfig_Config'| (T@$1_ValidatorConfig_Config) Bool)
(declare-fun |$IndexOfVec'$1_ValidatorConfig_Config'| (T@Vec_53785 T@$1_ValidatorConfig_Config) Int)
(declare-fun |$IsEqual'vec'address''| (T@Vec_19166 T@Vec_19166) Bool)
(declare-fun InRangeVec_12105 (T@Vec_19166 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'address''| (T@Vec_19166) Bool)
(declare-fun |$IndexOfVec'address'| (T@Vec_19166 Int) Int)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_19166 T@Vec_19166) Bool)
(declare-fun |$IsValid'vec'u64''| (T@Vec_19166) Bool)
(declare-fun |$IndexOfVec'u64'| (T@Vec_19166 Int) Int)
(declare-fun |$IsValid'vec'u8''| (T@Vec_19166) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_19166 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_19166) T@Vec_19166)
(declare-fun $1_Hash_sha3 (T@Vec_19166) T@Vec_19166)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_19166) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_19166 T@Vec_19166 T@Vec_19166) Bool)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_53699_| (|T@[$1_Event_EventHandle]Multiset_53699| T@$1_Event_EventHandle) T@Multiset_53699)
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
(declare-fun IndexOfVec_19166 (T@Vec_19166 Int) Int)
(declare-fun IndexOfVec_53785 (T@Vec_53785 T@$1_ValidatorConfig_Config) Int)
(declare-fun IndexOfVec_53824 (T@Vec_53824 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun IndexOfVec_53863 (T@Vec_53863 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun IndexOfVec_53941 (T@Vec_53941 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun IndexOfVec_54153 (T@Vec_54153 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Int)
(declare-fun IndexOfVec_54192 (T@Vec_54192 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Int)
(declare-fun IndexOfVec_54231 (T@Vec_54231 |T@$1_Diem_PreburnWithMetadata'#0'|) Int)
(declare-fun IndexOfVec_54333 (T@Vec_54333 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_53699| |T@[$1_Event_EventHandle]Multiset_53699|) |T@[$1_Event_EventHandle]Multiset_53699|)
(declare-fun |lambda#30| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(declare-fun |lambda#3| (Int Int Int |T@[Int]$1_DiemAccount_KeyRotationCapability| |T@[Int]$1_DiemAccount_KeyRotationCapability| Int T@$1_DiemAccount_KeyRotationCapability) |T@[Int]$1_DiemAccount_KeyRotationCapability|)
(declare-fun |lambda#4| (Int Int |T@[Int]$1_DiemAccount_KeyRotationCapability| Int Int T@$1_DiemAccount_KeyRotationCapability) |T@[Int]$1_DiemAccount_KeyRotationCapability|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]$1_DiemAccount_KeyRotationCapability| |T@[Int]$1_DiemAccount_KeyRotationCapability| Int T@$1_DiemAccount_KeyRotationCapability) |T@[Int]$1_DiemAccount_KeyRotationCapability|)
(declare-fun |lambda#6| (Int Int Int |T@[Int]$1_DiemAccount_WithdrawCapability| |T@[Int]$1_DiemAccount_WithdrawCapability| Int T@$1_DiemAccount_WithdrawCapability) |T@[Int]$1_DiemAccount_WithdrawCapability|)
(declare-fun |lambda#7| (Int Int |T@[Int]$1_DiemAccount_WithdrawCapability| Int Int T@$1_DiemAccount_WithdrawCapability) |T@[Int]$1_DiemAccount_WithdrawCapability|)
(declare-fun |lambda#8| (Int Int Int |T@[Int]$1_DiemAccount_WithdrawCapability| |T@[Int]$1_DiemAccount_WithdrawCapability| Int T@$1_DiemAccount_WithdrawCapability) |T@[Int]$1_DiemAccount_WithdrawCapability|)
(declare-fun |lambda#9| (Int Int Int |T@[Int]$1_DiemSystem_ValidatorInfo| |T@[Int]$1_DiemSystem_ValidatorInfo| Int T@$1_DiemSystem_ValidatorInfo) |T@[Int]$1_DiemSystem_ValidatorInfo|)
(declare-fun |lambda#10| (Int Int |T@[Int]$1_DiemSystem_ValidatorInfo| Int Int T@$1_DiemSystem_ValidatorInfo) |T@[Int]$1_DiemSystem_ValidatorInfo|)
(declare-fun |lambda#11| (Int Int Int |T@[Int]$1_DiemSystem_ValidatorInfo| |T@[Int]$1_DiemSystem_ValidatorInfo| Int T@$1_DiemSystem_ValidatorInfo) |T@[Int]$1_DiemSystem_ValidatorInfo|)
(declare-fun |lambda#12| (Int Int Int |T@[Int]$1_Diem_PreburnWithMetadata'#0'| |T@[Int]$1_Diem_PreburnWithMetadata'#0'| Int |T@$1_Diem_PreburnWithMetadata'#0'|) |T@[Int]$1_Diem_PreburnWithMetadata'#0'|)
(declare-fun |lambda#13| (Int Int |T@[Int]$1_Diem_PreburnWithMetadata'#0'| Int Int |T@$1_Diem_PreburnWithMetadata'#0'|) |T@[Int]$1_Diem_PreburnWithMetadata'#0'|)
(declare-fun |lambda#14| (Int Int Int |T@[Int]$1_Diem_PreburnWithMetadata'#0'| |T@[Int]$1_Diem_PreburnWithMetadata'#0'| Int |T@$1_Diem_PreburnWithMetadata'#0'|) |T@[Int]$1_Diem_PreburnWithMetadata'#0'|)
(declare-fun |lambda#15| (Int Int Int |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| Int |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)
(declare-fun |lambda#16| (Int Int |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| Int Int |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)
(declare-fun |lambda#17| (Int Int Int |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| Int |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)
(declare-fun |lambda#18| (Int Int Int |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| Int |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)
(declare-fun |lambda#19| (Int Int |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| Int Int |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)
(declare-fun |lambda#20| (Int Int Int |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| Int |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)
(declare-fun |lambda#21| (Int Int Int |T@[Int]$1_VASPDomain_VASPDomain| |T@[Int]$1_VASPDomain_VASPDomain| Int T@$1_VASPDomain_VASPDomain) |T@[Int]$1_VASPDomain_VASPDomain|)
(declare-fun |lambda#22| (Int Int |T@[Int]$1_VASPDomain_VASPDomain| Int Int T@$1_VASPDomain_VASPDomain) |T@[Int]$1_VASPDomain_VASPDomain|)
(declare-fun |lambda#23| (Int Int Int |T@[Int]$1_VASPDomain_VASPDomain| |T@[Int]$1_VASPDomain_VASPDomain| Int T@$1_VASPDomain_VASPDomain) |T@[Int]$1_VASPDomain_VASPDomain|)
(declare-fun |lambda#24| (Int Int Int |T@[Int]$1_ValidatorConfig_Config| |T@[Int]$1_ValidatorConfig_Config| Int T@$1_ValidatorConfig_Config) |T@[Int]$1_ValidatorConfig_Config|)
(declare-fun |lambda#25| (Int Int |T@[Int]$1_ValidatorConfig_Config| Int Int T@$1_ValidatorConfig_Config) |T@[Int]$1_ValidatorConfig_Config|)
(declare-fun |lambda#26| (Int Int Int |T@[Int]$1_ValidatorConfig_Config| |T@[Int]$1_ValidatorConfig_Config| Int T@$1_ValidatorConfig_Config) |T@[Int]$1_ValidatorConfig_Config|)
(declare-fun |lambda#27| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#28| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#29| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |DesignatedDealerbpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |DesignatedDealerbpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |DesignatedDealerbpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |DesignatedDealerbpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |DesignatedDealerbpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |DesignatedDealerbpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |DesignatedDealerbpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |DesignatedDealerbpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_53824) (v2 T@Vec_53824) ) (! (= (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1 v2)  (and (= (|l#Vec_53824| v1) (|l#Vec_53824| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_46858 v1 i@@0) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_53824| v1) i@@0) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_53824| v2) i@@0)))
 :qid |DesignatedDealerbpl.615:13|
 :skolemid |17|
))))
 :qid |DesignatedDealerbpl.613:62|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_53824) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_53824| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_46858 v@@4 i@@1) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_53824| v@@4) i@@1)))
 :qid |DesignatedDealerbpl.621:13|
 :skolemid |19|
))))
 :qid |DesignatedDealerbpl.619:62|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_53824) (e T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@2 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_46858 v@@5 i@@3)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_53824| v@@5) i@@3) e))
 :qid |DesignatedDealerbpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_46858 v@@5 i@@2)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_53824| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_53824| v@@5) j) e)))
 :qid |DesignatedDealerbpl.634:17|
 :skolemid |22|
)))))
 :qid |DesignatedDealerbpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_53863) (v2@@0 T@Vec_53863) ) (! (= (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@0 v2@@0)  (and (= (|l#Vec_53863| v1@@0) (|l#Vec_53863| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_47059 v1@@0 i@@4) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_53863| v1@@0) i@@4) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_53863| v2@@0) i@@4)))
 :qid |DesignatedDealerbpl.796:13|
 :skolemid |24|
))))
 :qid |DesignatedDealerbpl.794:59|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_53863) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_53863| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_47059 v@@6 i@@5) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_53863| v@@6) i@@5)))
 :qid |DesignatedDealerbpl.802:13|
 :skolemid |26|
))))
 :qid |DesignatedDealerbpl.800:59|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_53863) (e@@0 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@6 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_47059 v@@7 i@@7)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_53863| v@@7) i@@7) e@@0))
 :qid |DesignatedDealerbpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_47059 v@@7 i@@6)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_53863| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_53863| v@@7) j@@0) e@@0)))
 :qid |DesignatedDealerbpl.815:17|
 :skolemid |29|
)))))
 :qid |DesignatedDealerbpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_53941) (v2@@1 T@Vec_53941) ) (! (= (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@1 v2@@1)  (and (= (|l#Vec_53941| v1@@1) (|l#Vec_53941| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_47260 v1@@1 i@@8) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_53941| v1@@1) i@@8)) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_53941| v2@@1) i@@8))) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_53941| v1@@1) i@@8)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_53941| v2@@1) i@@8)))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_53941| v1@@1) i@@8))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_53941| v2@@1) i@@8)))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_53941| v1@@1) i@@8))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_53941| v2@@1) i@@8))))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_53941| v1@@1) i@@8))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_53941| v2@@1) i@@8)))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_53941| v1@@1) i@@8)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_53941| v2@@1) i@@8)))))
 :qid |DesignatedDealerbpl.977:13|
 :skolemid |31|
))))
 :qid |DesignatedDealerbpl.975:53|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_53941) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_53941| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_47260 v@@8 i@@9) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_53941| v@@8) i@@9)))
 :qid |DesignatedDealerbpl.983:13|
 :skolemid |33|
))))
 :qid |DesignatedDealerbpl.981:53|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_53941) (e@@1 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_47260 v@@9 i@@11)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_53941| v@@9) i@@11)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@1)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_53941| v@@9) i@@11)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@1))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_53941| v@@9) i@@11))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@1))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_53941| v@@9) i@@11))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@1)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_53941| v@@9) i@@11))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@1))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_53941| v@@9) i@@11)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@1))))
 :qid |DesignatedDealerbpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_47260 v@@9 i@@10)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_53941| v@@9) i@@10)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@1)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_53941| v@@9) i@@10)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@1))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_53941| v@@9) i@@10))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@1))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_53941| v@@9) i@@10))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@1)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_53941| v@@9) i@@10))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@1))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_53941| v@@9) i@@10)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@1)))) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_53941| v@@9) j@@1)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@1)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_53941| v@@9) j@@1)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@1))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_53941| v@@9) j@@1))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@1))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_53941| v@@9) j@@1))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@1)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_53941| v@@9) j@@1))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@1))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_53941| v@@9) j@@1)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@1)))))
 :qid |DesignatedDealerbpl.996:17|
 :skolemid |36|
)))))
 :qid |DesignatedDealerbpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_54231) (v2@@2 T@Vec_54231) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'#0'''| v1@@2 v2@@2)  (and (= (|l#Vec_54231| v1@@2) (|l#Vec_54231| v2@@2)) (forall ((i@@12 Int) ) (!  (=> (InRangeVec_47461 v1@@2 i@@12) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_54231| v1@@2) i@@12)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_54231| v2@@2) i@@12))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_54231| v1@@2) i@@12)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_54231| v2@@2) i@@12)))))
 :qid |DesignatedDealerbpl.1158:13|
 :skolemid |38|
))))
 :qid |DesignatedDealerbpl.1156:57|
 :skolemid |39|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'#0'''| v1@@2 v2@@2))
)))
(assert (forall ((v@@10 T@Vec_54231) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@10)  (and (|$IsValid'u64'| (|l#Vec_54231| v@@10)) (forall ((i@@13 Int) ) (!  (=> (InRangeVec_47461 v@@10 i@@13) (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_54231| v@@10) i@@13)))
 :qid |DesignatedDealerbpl.1164:13|
 :skolemid |40|
))))
 :qid |DesignatedDealerbpl.1162:57|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@10))
)))
(assert (forall ((v@@11 T@Vec_54231) (e@@2 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (let ((i@@14 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@11 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (and (|$IsValid'u64'| i@@15) (InRangeVec_47461 v@@11 i@@15)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_54231| v@@11) i@@15)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| e@@2)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_54231| v@@11) i@@15)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| e@@2))))
 :qid |DesignatedDealerbpl.1169:13|
 :skolemid |42|
))) (= i@@14 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@14) (InRangeVec_47461 v@@11 i@@14)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_54231| v@@11) i@@14)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| e@@2)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_54231| v@@11) i@@14)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| e@@2)))) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@14)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_54231| v@@11) j@@2)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| e@@2)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_54231| v@@11) j@@2)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| e@@2)))))
 :qid |DesignatedDealerbpl.1177:17|
 :skolemid |43|
)))))
 :qid |DesignatedDealerbpl.1173:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@11 e@@2))
)))
(assert (forall ((v1@@3 T@Vec_54192) (v2@@3 T@Vec_54192) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v1@@3 v2@@3)  (and (= (|l#Vec_54192| v1@@3) (|l#Vec_54192| v2@@3)) (forall ((i@@16 Int) ) (!  (=> (InRangeVec_47662 v1@@3 i@@16) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_54192| v1@@3) i@@16)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_54192| v2@@3) i@@16))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_54192| v1@@3) i@@16)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_54192| v2@@3) i@@16)))))
 :qid |DesignatedDealerbpl.1339:13|
 :skolemid |45|
))))
 :qid |DesignatedDealerbpl.1337:65|
 :skolemid |46|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v1@@3 v2@@3))
)))
(assert (forall ((v@@12 T@Vec_54192) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12)  (and (|$IsValid'u64'| (|l#Vec_54192| v@@12)) (forall ((i@@17 Int) ) (!  (=> (InRangeVec_47662 v@@12 i@@17) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_54192| v@@12) i@@17)))
 :qid |DesignatedDealerbpl.1345:13|
 :skolemid |47|
))))
 :qid |DesignatedDealerbpl.1343:65|
 :skolemid |48|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12))
)))
(assert (forall ((v@@13 T@Vec_54192) (e@@3 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@18 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3)))
(ite  (not (exists ((i@@19 Int) ) (!  (and (and (|$IsValid'u64'| i@@19) (InRangeVec_47662 v@@13 i@@19)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_54192| v@@13) i@@19)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_54192| v@@13) i@@19)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@3))))
 :qid |DesignatedDealerbpl.1350:13|
 :skolemid |49|
))) (= i@@18 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@18) (InRangeVec_47662 v@@13 i@@18)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_54192| v@@13) i@@18)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_54192| v@@13) i@@18)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@3)))) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@18)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_54192| v@@13) j@@3)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_54192| v@@13) j@@3)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@3)))))
 :qid |DesignatedDealerbpl.1358:17|
 :skolemid |50|
)))))
 :qid |DesignatedDealerbpl.1354:15|
 :skolemid |51|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3))
)))
(assert (forall ((v1@@4 T@Vec_54153) (v2@@4 T@Vec_54153) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v1@@4 v2@@4)  (and (= (|l#Vec_54153| v1@@4) (|l#Vec_54153| v2@@4)) (forall ((i@@20 Int) ) (!  (=> (InRangeVec_47863 v1@@4 i@@20) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_54153| v1@@4) i@@20)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_54153| v2@@4) i@@20))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_54153| v1@@4) i@@20)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_54153| v2@@4) i@@20)))))
 :qid |DesignatedDealerbpl.1520:13|
 :skolemid |52|
))))
 :qid |DesignatedDealerbpl.1518:65|
 :skolemid |53|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v1@@4 v2@@4))
)))
(assert (forall ((v@@14 T@Vec_54153) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14)  (and (|$IsValid'u64'| (|l#Vec_54153| v@@14)) (forall ((i@@21 Int) ) (!  (=> (InRangeVec_47863 v@@14 i@@21) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_54153| v@@14) i@@21)))
 :qid |DesignatedDealerbpl.1526:13|
 :skolemid |54|
))))
 :qid |DesignatedDealerbpl.1524:65|
 :skolemid |55|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14))
)))
(assert (forall ((v@@15 T@Vec_54153) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@22 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (InRangeVec_47863 v@@15 i@@23)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_54153| v@@15) i@@23)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_54153| v@@15) i@@23)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@4))))
 :qid |DesignatedDealerbpl.1531:13|
 :skolemid |56|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (InRangeVec_47863 v@@15 i@@22)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_54153| v@@15) i@@22)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_54153| v@@15) i@@22)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@4)))) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@22)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_54153| v@@15) j@@4)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_54153| v@@15) j@@4)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@4)))))
 :qid |DesignatedDealerbpl.1539:17|
 :skolemid |57|
)))))
 :qid |DesignatedDealerbpl.1535:15|
 :skolemid |58|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4))
)))
(assert (forall ((v1@@5 T@Vec_54333) (v2@@5 T@Vec_54333) ) (! (= (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@5 v2@@5)  (and (= (|l#Vec_54333| v1@@5) (|l#Vec_54333| v2@@5)) (forall ((i@@24 Int) ) (!  (=> (InRangeVec_48064 v1@@5 i@@24) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_54333| v1@@5) i@@24)) (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_54333| v2@@5) i@@24))))
 :qid |DesignatedDealerbpl.1701:13|
 :skolemid |59|
))))
 :qid |DesignatedDealerbpl.1699:50|
 :skolemid |60|
 :pattern ( (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@5 v2@@5))
)))
(assert (forall ((v@@16 T@Vec_54333) ) (! (= (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@16)  (and (|$IsValid'u64'| (|l#Vec_54333| v@@16)) (forall ((i@@25 Int) ) (!  (=> (InRangeVec_48064 v@@16 i@@25) (|$IsValid'$1_VASPDomain_VASPDomain'| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_54333| v@@16) i@@25)))
 :qid |DesignatedDealerbpl.1707:13|
 :skolemid |61|
))))
 :qid |DesignatedDealerbpl.1705:50|
 :skolemid |62|
 :pattern ( (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@16))
)))
(assert (forall ((v@@17 T@Vec_54333) (e@@5 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@26 (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@17 e@@5)))
(ite  (not (exists ((i@@27 Int) ) (!  (and (and (|$IsValid'u64'| i@@27) (InRangeVec_48064 v@@17 i@@27)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_54333| v@@17) i@@27)) (|$domain#$1_VASPDomain_VASPDomain| e@@5)))
 :qid |DesignatedDealerbpl.1712:13|
 :skolemid |63|
))) (= i@@26 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@26) (InRangeVec_48064 v@@17 i@@26)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_54333| v@@17) i@@26)) (|$domain#$1_VASPDomain_VASPDomain| e@@5))) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@26)) (not (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_54333| v@@17) j@@5)) (|$domain#$1_VASPDomain_VASPDomain| e@@5))))
 :qid |DesignatedDealerbpl.1720:17|
 :skolemid |64|
)))))
 :qid |DesignatedDealerbpl.1716:15|
 :skolemid |65|
 :pattern ( (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@17 e@@5))
)))
(assert (forall ((v1@@6 T@Vec_53785) (v2@@6 T@Vec_53785) ) (! (= (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@6 v2@@6)  (and (= (|l#Vec_53785| v1@@6) (|l#Vec_53785| v2@@6)) (forall ((i@@28 Int) ) (!  (=> (InRangeVec_48265 v1@@6 i@@28) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_53785| v1@@6) i@@28)) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_53785| v2@@6) i@@28))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_53785| v1@@6) i@@28)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_53785| v2@@6) i@@28)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_53785| v1@@6) i@@28)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_53785| v2@@6) i@@28)))))
 :qid |DesignatedDealerbpl.1882:13|
 :skolemid |66|
))))
 :qid |DesignatedDealerbpl.1880:51|
 :skolemid |67|
 :pattern ( (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@6 v2@@6))
)))
(assert (forall ((v@@18 T@Vec_53785) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@18)  (and (|$IsValid'u64'| (|l#Vec_53785| v@@18)) (forall ((i@@29 Int) ) (!  (=> (InRangeVec_48265 v@@18 i@@29) (|$IsValid'$1_ValidatorConfig_Config'| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_53785| v@@18) i@@29)))
 :qid |DesignatedDealerbpl.1888:13|
 :skolemid |68|
))))
 :qid |DesignatedDealerbpl.1886:51|
 :skolemid |69|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@18))
)))
(assert (forall ((v@@19 T@Vec_53785) (e@@6 T@$1_ValidatorConfig_Config) ) (! (let ((i@@30 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@19 e@@6)))
(ite  (not (exists ((i@@31 Int) ) (!  (and (and (|$IsValid'u64'| i@@31) (InRangeVec_48265 v@@19 i@@31)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_53785| v@@19) i@@31)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@6)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_53785| v@@19) i@@31)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@6))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_53785| v@@19) i@@31)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@6))))
 :qid |DesignatedDealerbpl.1893:13|
 :skolemid |70|
))) (= i@@30 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@30) (InRangeVec_48265 v@@19 i@@30)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_53785| v@@19) i@@30)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@6)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_53785| v@@19) i@@30)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@6))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_53785| v@@19) i@@30)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@6)))) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@30)) (not (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_53785| v@@19) j@@6)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@6)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_53785| v@@19) j@@6)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@6))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_53785| v@@19) j@@6)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@6)))))
 :qid |DesignatedDealerbpl.1901:17|
 :skolemid |71|
)))))
 :qid |DesignatedDealerbpl.1897:15|
 :skolemid |72|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@19 e@@6))
)))
(assert (forall ((v1@@7 T@Vec_19166) (v2@@7 T@Vec_19166) ) (! (= (|$IsEqual'vec'address''| v1@@7 v2@@7)  (and (= (|l#Vec_19166| v1@@7) (|l#Vec_19166| v2@@7)) (forall ((i@@32 Int) ) (!  (=> (InRangeVec_12105 v1@@7 i@@32) (= (|Select__T@[Int]Int_| (|v#Vec_19166| v1@@7) i@@32) (|Select__T@[Int]Int_| (|v#Vec_19166| v2@@7) i@@32)))
 :qid |DesignatedDealerbpl.2063:13|
 :skolemid |73|
))))
 :qid |DesignatedDealerbpl.2061:33|
 :skolemid |74|
 :pattern ( (|$IsEqual'vec'address''| v1@@7 v2@@7))
)))
(assert (forall ((v@@20 T@Vec_19166) ) (! (= (|$IsValid'vec'address''| v@@20)  (and (|$IsValid'u64'| (|l#Vec_19166| v@@20)) (forall ((i@@33 Int) ) (!  (=> (InRangeVec_12105 v@@20 i@@33) (|$IsValid'address'| (|Select__T@[Int]Int_| (|v#Vec_19166| v@@20) i@@33)))
 :qid |DesignatedDealerbpl.2069:13|
 :skolemid |75|
))))
 :qid |DesignatedDealerbpl.2067:33|
 :skolemid |76|
 :pattern ( (|$IsValid'vec'address''| v@@20))
)))
(assert (forall ((v@@21 T@Vec_19166) (e@@7 Int) ) (! (let ((i@@34 (|$IndexOfVec'address'| v@@21 e@@7)))
(ite  (not (exists ((i@@35 Int) ) (!  (and (and (|$IsValid'u64'| i@@35) (InRangeVec_12105 v@@21 i@@35)) (= (|Select__T@[Int]Int_| (|v#Vec_19166| v@@21) i@@35) e@@7))
 :qid |DesignatedDealerbpl.2074:13|
 :skolemid |77|
))) (= i@@34 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@34) (InRangeVec_12105 v@@21 i@@34)) (= (|Select__T@[Int]Int_| (|v#Vec_19166| v@@21) i@@34) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@34)) (not (= (|Select__T@[Int]Int_| (|v#Vec_19166| v@@21) j@@7) e@@7)))
 :qid |DesignatedDealerbpl.2082:17|
 :skolemid |78|
)))))
 :qid |DesignatedDealerbpl.2078:15|
 :skolemid |79|
 :pattern ( (|$IndexOfVec'address'| v@@21 e@@7))
)))
(assert (forall ((v1@@8 T@Vec_19166) (v2@@8 T@Vec_19166) ) (! (= (|$IsEqual'vec'u64''| v1@@8 v2@@8)  (and (= (|l#Vec_19166| v1@@8) (|l#Vec_19166| v2@@8)) (forall ((i@@36 Int) ) (!  (=> (InRangeVec_12105 v1@@8 i@@36) (= (|Select__T@[Int]Int_| (|v#Vec_19166| v1@@8) i@@36) (|Select__T@[Int]Int_| (|v#Vec_19166| v2@@8) i@@36)))
 :qid |DesignatedDealerbpl.2244:13|
 :skolemid |80|
))))
 :qid |DesignatedDealerbpl.2242:29|
 :skolemid |81|
 :pattern ( (|$IsEqual'vec'u64''| v1@@8 v2@@8))
)))
(assert (forall ((v@@22 T@Vec_19166) ) (! (= (|$IsValid'vec'u64''| v@@22)  (and (|$IsValid'u64'| (|l#Vec_19166| v@@22)) (forall ((i@@37 Int) ) (!  (=> (InRangeVec_12105 v@@22 i@@37) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_19166| v@@22) i@@37)))
 :qid |DesignatedDealerbpl.2250:13|
 :skolemid |82|
))))
 :qid |DesignatedDealerbpl.2248:29|
 :skolemid |83|
 :pattern ( (|$IsValid'vec'u64''| v@@22))
)))
(assert (forall ((v@@23 T@Vec_19166) (e@@8 Int) ) (! (let ((i@@38 (|$IndexOfVec'u64'| v@@23 e@@8)))
(ite  (not (exists ((i@@39 Int) ) (!  (and (and (|$IsValid'u64'| i@@39) (InRangeVec_12105 v@@23 i@@39)) (= (|Select__T@[Int]Int_| (|v#Vec_19166| v@@23) i@@39) e@@8))
 :qid |DesignatedDealerbpl.2255:13|
 :skolemid |84|
))) (= i@@38 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@38) (InRangeVec_12105 v@@23 i@@38)) (= (|Select__T@[Int]Int_| (|v#Vec_19166| v@@23) i@@38) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@38)) (not (= (|Select__T@[Int]Int_| (|v#Vec_19166| v@@23) j@@8) e@@8)))
 :qid |DesignatedDealerbpl.2263:17|
 :skolemid |85|
)))))
 :qid |DesignatedDealerbpl.2259:15|
 :skolemid |86|
 :pattern ( (|$IndexOfVec'u64'| v@@23 e@@8))
)))
(assert (forall ((v1@@9 T@Vec_19166) (v2@@9 T@Vec_19166) ) (! (= (|$IsEqual'vec'u8''| v1@@9 v2@@9)  (and (= (|l#Vec_19166| v1@@9) (|l#Vec_19166| v2@@9)) (forall ((i@@40 Int) ) (!  (=> (InRangeVec_12105 v1@@9 i@@40) (= (|Select__T@[Int]Int_| (|v#Vec_19166| v1@@9) i@@40) (|Select__T@[Int]Int_| (|v#Vec_19166| v2@@9) i@@40)))
 :qid |DesignatedDealerbpl.2425:13|
 :skolemid |87|
))))
 :qid |DesignatedDealerbpl.2423:28|
 :skolemid |88|
 :pattern ( (|$IsEqual'vec'u8''| v1@@9 v2@@9))
)))
(assert (forall ((v@@24 T@Vec_19166) ) (! (= (|$IsValid'vec'u8''| v@@24)  (and (|$IsValid'u64'| (|l#Vec_19166| v@@24)) (forall ((i@@41 Int) ) (!  (=> (InRangeVec_12105 v@@24 i@@41) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_19166| v@@24) i@@41)))
 :qid |DesignatedDealerbpl.2431:13|
 :skolemid |89|
))))
 :qid |DesignatedDealerbpl.2429:28|
 :skolemid |90|
 :pattern ( (|$IsValid'vec'u8''| v@@24))
)))
(assert (forall ((v@@25 T@Vec_19166) (e@@9 Int) ) (! (let ((i@@42 (|$IndexOfVec'u8'| v@@25 e@@9)))
(ite  (not (exists ((i@@43 Int) ) (!  (and (and (|$IsValid'u64'| i@@43) (InRangeVec_12105 v@@25 i@@43)) (= (|Select__T@[Int]Int_| (|v#Vec_19166| v@@25) i@@43) e@@9))
 :qid |DesignatedDealerbpl.2436:13|
 :skolemid |91|
))) (= i@@42 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@42) (InRangeVec_12105 v@@25 i@@42)) (= (|Select__T@[Int]Int_| (|v#Vec_19166| v@@25) i@@42) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@9) (>= j@@9 0)) (< j@@9 i@@42)) (not (= (|Select__T@[Int]Int_| (|v#Vec_19166| v@@25) j@@9) e@@9)))
 :qid |DesignatedDealerbpl.2444:17|
 :skolemid |92|
)))))
 :qid |DesignatedDealerbpl.2440:15|
 :skolemid |93|
 :pattern ( (|$IndexOfVec'u8'| v@@25 e@@9))
)))
(assert (forall ((v1@@10 T@Vec_19166) (v2@@10 T@Vec_19166) ) (! (= (|$IsEqual'vec'u8''| v1@@10 v2@@10) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@10) ($1_Hash_sha2 v2@@10)))
 :qid |DesignatedDealerbpl.2617:15|
 :skolemid |94|
 :pattern ( ($1_Hash_sha2 v1@@10) ($1_Hash_sha2 v2@@10))
)))
(assert (forall ((v1@@11 T@Vec_19166) (v2@@11 T@Vec_19166) ) (! (= (|$IsEqual'vec'u8''| v1@@11 v2@@11) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@11) ($1_Hash_sha3 v2@@11)))
 :qid |DesignatedDealerbpl.2633:15|
 :skolemid |95|
 :pattern ( ($1_Hash_sha3 v1@@11) ($1_Hash_sha3 v2@@11))
)))
(assert (forall ((k1 T@Vec_19166) (k2 T@Vec_19166) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |DesignatedDealerbpl.2704:15|
 :skolemid |96|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_19166) (s2 T@Vec_19166) (k1@@0 T@Vec_19166) (k2@@0 T@Vec_19166) (m1 T@Vec_19166) (m2 T@Vec_19166) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |DesignatedDealerbpl.2707:15|
 :skolemid |97|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_53699_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_53699| stream) 0) (forall ((v@@26 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_53699| stream) v@@26) 0)
 :qid |DesignatedDealerbpl.159:13|
 :skolemid |4|
))))
 :qid |DesignatedDealerbpl.2768:13|
 :skolemid |98|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h) true)
 :qid |DesignatedDealerbpl.2809:80|
 :skolemid |100|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h))
)))
(assert (forall ((v1@@12 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@12 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (=  (and (and (|$IsEqual'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v1@@12) (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v2@@12)) (= (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v1@@12) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v2@@12))) (= (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v1@@12) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v2@@12))) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@12) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@12)))
 :qid |DesignatedDealerbpl.2815:15|
 :skolemid |101|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@12) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@12))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@0) true)
 :qid |DesignatedDealerbpl.2865:78|
 :skolemid |102|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@0))
)))
(assert (forall ((v1@@13 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@13 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v1@@13) (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v2@@13)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v1@@13) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v2@@13))) (= (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v1@@13) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v2@@13))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v1@@13) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v2@@13))) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@13) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@13)))
 :qid |DesignatedDealerbpl.2871:15|
 :skolemid |103|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@13) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@13))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@1) true)
 :qid |DesignatedDealerbpl.2921:74|
 :skolemid |104|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@1))
)))
(assert (forall ((v1@@14 T@$1_DiemAccount_SentPaymentEvent) (v2@@14 T@$1_DiemAccount_SentPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_SentPaymentEvent| v1@@14) (|$amount#$1_DiemAccount_SentPaymentEvent| v2@@14)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| v1@@14) (|$currency_code#$1_DiemAccount_SentPaymentEvent| v2@@14))) (= (|$payee#$1_DiemAccount_SentPaymentEvent| v1@@14) (|$payee#$1_DiemAccount_SentPaymentEvent| v2@@14))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| v1@@14) (|$metadata#$1_DiemAccount_SentPaymentEvent| v2@@14))) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@14) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@14)))
 :qid |DesignatedDealerbpl.2927:15|
 :skolemid |105|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@14) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@14))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@2) true)
 :qid |DesignatedDealerbpl.2977:60|
 :skolemid |106|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@2))
)))
(assert (forall ((v1@@15 T@$1_Diem_BurnEvent) (v2@@15 T@$1_Diem_BurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_BurnEvent| v1@@15) (|$amount#$1_Diem_BurnEvent| v2@@15)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| v1@@15) (|$currency_code#$1_Diem_BurnEvent| v2@@15))) (= (|$preburn_address#$1_Diem_BurnEvent| v1@@15) (|$preburn_address#$1_Diem_BurnEvent| v2@@15))) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@15) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@15)))
 :qid |DesignatedDealerbpl.2983:15|
 :skolemid |107|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@15) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@15))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@3) true)
 :qid |DesignatedDealerbpl.3033:66|
 :skolemid |108|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@3))
)))
(assert (forall ((v1@@16 T@$1_Diem_CancelBurnEvent) (v2@@16 T@$1_Diem_CancelBurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_CancelBurnEvent| v1@@16) (|$amount#$1_Diem_CancelBurnEvent| v2@@16)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| v1@@16) (|$currency_code#$1_Diem_CancelBurnEvent| v2@@16))) (= (|$preburn_address#$1_Diem_CancelBurnEvent| v1@@16) (|$preburn_address#$1_Diem_CancelBurnEvent| v2@@16))) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@16) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@16)))
 :qid |DesignatedDealerbpl.3039:15|
 :skolemid |109|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@16) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@16))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@4) true)
 :qid |DesignatedDealerbpl.3089:60|
 :skolemid |110|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@4))
)))
(assert (forall ((v1@@17 T@$1_Diem_MintEvent) (v2@@17 T@$1_Diem_MintEvent) ) (! (=  (and (= (|$amount#$1_Diem_MintEvent| v1@@17) (|$amount#$1_Diem_MintEvent| v2@@17)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_MintEvent| v1@@17) (|$currency_code#$1_Diem_MintEvent| v2@@17))) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@17) (|$ToEventRep'$1_Diem_MintEvent'| v2@@17)))
 :qid |DesignatedDealerbpl.3095:15|
 :skolemid |111|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@17) (|$ToEventRep'$1_Diem_MintEvent'| v2@@17))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@5) true)
 :qid |DesignatedDealerbpl.3145:63|
 :skolemid |112|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@5))
)))
(assert (forall ((v1@@18 T@$1_Diem_PreburnEvent) (v2@@18 T@$1_Diem_PreburnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_PreburnEvent| v1@@18) (|$amount#$1_Diem_PreburnEvent| v2@@18)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| v1@@18) (|$currency_code#$1_Diem_PreburnEvent| v2@@18))) (= (|$preburn_address#$1_Diem_PreburnEvent| v1@@18) (|$preburn_address#$1_Diem_PreburnEvent| v2@@18))) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@18) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@18)))
 :qid |DesignatedDealerbpl.3151:15|
 :skolemid |113|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@18) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@18))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@6) true)
 :qid |DesignatedDealerbpl.3201:79|
 :skolemid |114|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@6))
)))
(assert (forall ((v1@@19 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@19 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@19) (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@19)) (= (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@19) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@19))) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@19) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@19)))
 :qid |DesignatedDealerbpl.3207:15|
 :skolemid |115|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@19) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@19))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@7) true)
 :qid |DesignatedDealerbpl.3257:82|
 :skolemid |116|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@7))
)))
(assert (forall ((v1@@20 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@20 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v1@@20) (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v2@@20)) (= (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v1@@20) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v2@@20))) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@20) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@20)))
 :qid |DesignatedDealerbpl.3263:15|
 :skolemid |117|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@20) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@20))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@8) true)
 :qid |DesignatedDealerbpl.3313:88|
 :skolemid |118|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@8))
)))
(assert (forall ((v1@@21 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@21 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@21) (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@21)) (= (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@21) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@21))) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@21) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@21)))
 :qid |DesignatedDealerbpl.3319:15|
 :skolemid |119|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@21) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@21))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@9) true)
 :qid |DesignatedDealerbpl.3369:72|
 :skolemid |120|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@9))
)))
(assert (forall ((v1@@22 T@$1_VASPDomain_VASPDomainEvent) (v2@@22 T@$1_VASPDomain_VASPDomainEvent) ) (! (=  (and (and (= (|$removed#$1_VASPDomain_VASPDomainEvent| v1@@22) (|$removed#$1_VASPDomain_VASPDomainEvent| v2@@22)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v1@@22)) (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v2@@22)))) (= (|$address#$1_VASPDomain_VASPDomainEvent| v1@@22) (|$address#$1_VASPDomain_VASPDomainEvent| v2@@22))) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@22) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@22)))
 :qid |DesignatedDealerbpl.3375:15|
 :skolemid |121|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@22) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@22))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |DesignatedDealerbpl.3439:61|
 :skolemid |122|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |DesignatedDealerbpl.3498:36|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |DesignatedDealerbpl.3517:71|
 :skolemid |124|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@2) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@2)))
 :qid |DesignatedDealerbpl.3540:46|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@3)))
 :qid |DesignatedDealerbpl.3552:64|
 :skolemid |126|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@4)))
 :qid |DesignatedDealerbpl.3564:75|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@5)))
 :qid |DesignatedDealerbpl.3576:72|
 :skolemid |128|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5))
)))
(assert (forall ((s@@6 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@6)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@6))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@6))))
 :qid |DesignatedDealerbpl.3604:55|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@7)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@7)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@7))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@7))))
 :qid |DesignatedDealerbpl.3627:46|
 :skolemid |130|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@7))
)))
(assert (forall ((s@@8 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@8)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@8))))
 :qid |DesignatedDealerbpl.3646:49|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8))
)))
(assert (forall ((s@@9 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@9)))
 :qid |DesignatedDealerbpl.3666:71|
 :skolemid |132|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9))
)))
(assert (forall ((s@@10 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@10)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@10)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@10))))
 :qid |DesignatedDealerbpl.3687:45|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@10))
)))
(assert (forall ((s@@11 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@11)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@11)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@11))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@11))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@11))))
 :qid |DesignatedDealerbpl.3710:48|
 :skolemid |134|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@11))
)))
(assert (forall ((s@@12 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@12) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@12)))
 :qid |DesignatedDealerbpl.3728:49|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@12))
)))
(assert (forall ((s@@13 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@13) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@13)))
 :qid |DesignatedDealerbpl.3846:45|
 :skolemid |136|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@14) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@14)))
 :qid |DesignatedDealerbpl.3859:45|
 :skolemid |137|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@14))
)))
(assert (forall ((s@@15 |T@$1_Diem_Diem'#0'|) ) (! (= (|$IsValid'$1_Diem_Diem'#0''| s@@15) (|$IsValid'u64'| (|$value#$1_Diem_Diem'#0'| s@@15)))
 :qid |DesignatedDealerbpl.3872:37|
 :skolemid |138|
 :pattern ( (|$IsValid'$1_Diem_Diem'#0''| s@@15))
)))
(assert (forall ((s@@16 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@16)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@16)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@16))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@16))))
 :qid |DesignatedDealerbpl.3891:38|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@16))
)))
(assert (forall ((s@@17 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@17)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@17)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@17))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@17))))
 :qid |DesignatedDealerbpl.3913:44|
 :skolemid |140|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@17))
)))
(assert (forall ((s@@18 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@18)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@18)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@18))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@18))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@18))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@18))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@18))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@18))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@18))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@18))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@18))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@18))))
 :qid |DesignatedDealerbpl.3965:53|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@19)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@19)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@19))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@19))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@19))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@19))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@19))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@19))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@19))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@19))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@19))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@19))))
 :qid |DesignatedDealerbpl.4038:53|
 :skolemid |142|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_Diem_CurrencyInfo'#0'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@20)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'#0'| s@@20)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'#0'| s@@20))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| s@@20))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| s@@20))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'#0'| s@@20))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'#0'| s@@20))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'#0'| s@@20))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'#0'| s@@20))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'#0'| s@@20))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| s@@20))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| s@@20))))
 :qid |DesignatedDealerbpl.4111:45|
 :skolemid |143|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@20))
)))
(assert (forall ((s@@21 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@21) true)
 :qid |DesignatedDealerbpl.4148:55|
 :skolemid |144|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@21))
)))
(assert (forall ((s@@22 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@22) true)
 :qid |DesignatedDealerbpl.4162:55|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@22))
)))
(assert (forall ((s@@23 |T@$1_Diem_MintCapability'#0'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'#0''| s@@23) true)
 :qid |DesignatedDealerbpl.4176:47|
 :skolemid |146|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'#0''| s@@23))
)))
(assert (forall ((s@@24 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@24)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@24)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@24))))
 :qid |DesignatedDealerbpl.4193:38|
 :skolemid |147|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@24))
)))
(assert (forall ((s@@25 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@25) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@25)))
 :qid |DesignatedDealerbpl.4207:48|
 :skolemid |148|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@25))
)))
(assert (forall ((s@@26 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@26) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@26)))
 :qid |DesignatedDealerbpl.4221:48|
 :skolemid |149|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@26))
)))
(assert (forall ((s@@27 |T@$1_Diem_Preburn'#0'|) ) (! (= (|$IsValid'$1_Diem_Preburn'#0''| s@@27) (|$IsValid'$1_Diem_Diem'#0''| (|$to_burn#$1_Diem_Preburn'#0'| s@@27)))
 :qid |DesignatedDealerbpl.4235:40|
 :skolemid |150|
 :pattern ( (|$IsValid'$1_Diem_Preburn'#0''| s@@27))
)))
(assert (forall ((s@@28 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@28)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@28)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@28))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@28))))
 :qid |DesignatedDealerbpl.4255:41|
 :skolemid |151|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@29) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@29)))
 :qid |DesignatedDealerbpl.4271:53|
 :skolemid |152|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@30) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@30)))
 :qid |DesignatedDealerbpl.4284:53|
 :skolemid |153|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_PreburnQueue'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@31) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| (|$preburns#$1_Diem_PreburnQueue'#0'| s@@31)))
 :qid |DesignatedDealerbpl.4297:45|
 :skolemid |154|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@32)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@32)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@32))))
 :qid |DesignatedDealerbpl.4313:60|
 :skolemid |155|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@32))
)))
(assert (forall ((s@@33 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@33)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@33)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@33))))
 :qid |DesignatedDealerbpl.4330:60|
 :skolemid |156|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@33))
)))
(assert (forall ((s@@34 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@34)  (and (|$IsValid'$1_Diem_Preburn'#0''| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| s@@34)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| s@@34))))
 :qid |DesignatedDealerbpl.4347:52|
 :skolemid |157|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@34))
)))
(assert (forall ((s@@35 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@35)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@35)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@35))))
 :qid |DesignatedDealerbpl.4364:57|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@35))
)))
(assert (forall ((s@@36 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@36) true)
 :qid |DesignatedDealerbpl.5059:31|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@36))
)))
(assert (forall ((s@@37 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@37) true)
 :qid |DesignatedDealerbpl.5072:31|
 :skolemid |160|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@37))
)))
(assert (forall ((s@@38 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@38) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@38)))
 :qid |DesignatedDealerbpl.5085:45|
 :skolemid |161|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@38))
)))
(assert (forall ((s@@39 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@39)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@39))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@39))))
 :qid |DesignatedDealerbpl.5103:50|
 :skolemid |162|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@39))
)))
(assert (forall ((s@@40 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@40) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@40)))
 :qid |DesignatedDealerbpl.5119:52|
 :skolemid |163|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@40))
)))
(assert (forall ((s@@41 T@$1_VASPDomain_VASPDomains) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomains'| s@@41) (|$IsValid'vec'$1_VASPDomain_VASPDomain''| (|$domains#$1_VASPDomain_VASPDomains| s@@41)))
 :qid |DesignatedDealerbpl.5132:46|
 :skolemid |164|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomains'| s@@41))
)))
(assert (forall ((s@@42 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@42) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@42)))
 :qid |DesignatedDealerbpl.5155:38|
 :skolemid |165|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@42))
)))
(assert (forall ((s@@43 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@43) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@43)))
 :qid |DesignatedDealerbpl.5169:39|
 :skolemid |166|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@43))
)))
(assert (forall ((s@@44 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@44)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@44)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@44))))
 :qid |DesignatedDealerbpl.5191:60|
 :skolemid |167|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@44))
)))
(assert (forall ((s@@45 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@45)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@45)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@45))))
 :qid |DesignatedDealerbpl.5208:66|
 :skolemid |168|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@45))
)))
(assert (forall ((s@@46 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@46)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@46)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@46))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@46))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@46))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@46))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@46))))
 :qid |DesignatedDealerbpl.5237:50|
 :skolemid |169|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@46))
)))
(assert (forall ((s@@47 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@47) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@47)))
 :qid |DesignatedDealerbpl.5260:47|
 :skolemid |170|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@47))
)))
(assert (forall ((s@@48 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@48)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@48)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@48))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@48))))
 :qid |DesignatedDealerbpl.5279:58|
 :skolemid |171|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@48))
)))
(assert (forall ((s@@49 |T@$1_DesignatedDealer_TierInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DesignatedDealer_TierInfo'$1_XUS_XUS''| s@@49)  (and (and (|$IsValid'u64'| (|$window_start#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| s@@49)) (|$IsValid'u64'| (|$window_inflow#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| s@@49))) (|$IsValid'vec'u64''| (|$tiers#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| s@@49))))
 :qid |DesignatedDealerbpl.5301:61|
 :skolemid |172|
 :pattern ( (|$IsValid'$1_DesignatedDealer_TierInfo'$1_XUS_XUS''| s@@49))
)))
(assert (forall ((s@@50 |T@$1_DesignatedDealer_TierInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DesignatedDealer_TierInfo'$1_XDX_XDX''| s@@50)  (and (and (|$IsValid'u64'| (|$window_start#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| s@@50)) (|$IsValid'u64'| (|$window_inflow#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| s@@50))) (|$IsValid'vec'u64''| (|$tiers#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| s@@50))))
 :qid |DesignatedDealerbpl.5324:61|
 :skolemid |173|
 :pattern ( (|$IsValid'$1_DesignatedDealer_TierInfo'$1_XDX_XDX''| s@@50))
)))
(assert (forall ((s@@51 |T@$1_DesignatedDealer_TierInfo'#0'|) ) (! (= (|$IsValid'$1_DesignatedDealer_TierInfo'#0''| s@@51)  (and (and (|$IsValid'u64'| (|$window_start#$1_DesignatedDealer_TierInfo'#0'| s@@51)) (|$IsValid'u64'| (|$window_inflow#$1_DesignatedDealer_TierInfo'#0'| s@@51))) (|$IsValid'vec'u64''| (|$tiers#$1_DesignatedDealer_TierInfo'#0'| s@@51))))
 :qid |DesignatedDealerbpl.5347:53|
 :skolemid |174|
 :pattern ( (|$IsValid'$1_DesignatedDealer_TierInfo'#0''| s@@51))
)))
(assert (forall ((s@@52 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@52)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@52)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@52))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@52))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@52))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@52))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@52))))
 :qid |DesignatedDealerbpl.9412:47|
 :skolemid |460|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@52))
)))
(assert (forall ((s@@53 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@53) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@53)))
 :qid |DesignatedDealerbpl.9435:55|
 :skolemid |461|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@53))
)))
(assert (forall ((s@@54 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@54) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@54)))
 :qid |DesignatedDealerbpl.9449:55|
 :skolemid |462|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@54))
)))
(assert (forall ((s@@55 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@55) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@55)))
 :qid |DesignatedDealerbpl.9463:57|
 :skolemid |463|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@55))
)))
(assert (forall ((s@@56 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@56)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@56)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@56))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@56))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@56))))
 :qid |DesignatedDealerbpl.9485:56|
 :skolemid |464|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@56))
)))
(assert (forall ((s@@57 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@57)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@57)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@57))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@57))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@57))))
 :qid |DesignatedDealerbpl.9512:52|
 :skolemid |465|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@57))
)))
(assert (forall ((s@@58 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@58) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@58)))
 :qid |DesignatedDealerbpl.9530:54|
 :skolemid |466|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@58))
)))
(assert (forall ((v@@27 T@Vec_53824) (i@@44 Int) ) (! (= (InRangeVec_46858 v@@27 i@@44)  (and (>= i@@44 0) (< i@@44 (|l#Vec_53824| v@@27))))
 :qid |DesignatedDealerbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_46858 v@@27 i@@44))
)))
(assert (forall ((v@@28 T@Vec_53863) (i@@45 Int) ) (! (= (InRangeVec_47059 v@@28 i@@45)  (and (>= i@@45 0) (< i@@45 (|l#Vec_53863| v@@28))))
 :qid |DesignatedDealerbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_47059 v@@28 i@@45))
)))
(assert (forall ((v@@29 T@Vec_53941) (i@@46 Int) ) (! (= (InRangeVec_47260 v@@29 i@@46)  (and (>= i@@46 0) (< i@@46 (|l#Vec_53941| v@@29))))
 :qid |DesignatedDealerbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_47260 v@@29 i@@46))
)))
(assert (forall ((v@@30 T@Vec_54231) (i@@47 Int) ) (! (= (InRangeVec_47461 v@@30 i@@47)  (and (>= i@@47 0) (< i@@47 (|l#Vec_54231| v@@30))))
 :qid |DesignatedDealerbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_47461 v@@30 i@@47))
)))
(assert (forall ((v@@31 T@Vec_54192) (i@@48 Int) ) (! (= (InRangeVec_47662 v@@31 i@@48)  (and (>= i@@48 0) (< i@@48 (|l#Vec_54192| v@@31))))
 :qid |DesignatedDealerbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_47662 v@@31 i@@48))
)))
(assert (forall ((v@@32 T@Vec_54153) (i@@49 Int) ) (! (= (InRangeVec_47863 v@@32 i@@49)  (and (>= i@@49 0) (< i@@49 (|l#Vec_54153| v@@32))))
 :qid |DesignatedDealerbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_47863 v@@32 i@@49))
)))
(assert (forall ((v@@33 T@Vec_54333) (i@@50 Int) ) (! (= (InRangeVec_48064 v@@33 i@@50)  (and (>= i@@50 0) (< i@@50 (|l#Vec_54333| v@@33))))
 :qid |DesignatedDealerbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_48064 v@@33 i@@50))
)))
(assert (forall ((v@@34 T@Vec_53785) (i@@51 Int) ) (! (= (InRangeVec_48265 v@@34 i@@51)  (and (>= i@@51 0) (< i@@51 (|l#Vec_53785| v@@34))))
 :qid |DesignatedDealerbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_48265 v@@34 i@@51))
)))
(assert (forall ((v@@35 T@Vec_19166) (i@@52 Int) ) (! (= (InRangeVec_12105 v@@35 i@@52)  (and (>= i@@52 0) (< i@@52 (|l#Vec_19166| v@@35))))
 :qid |DesignatedDealerbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_12105 v@@35 i@@52))
)))
(assert (forall ((v@@36 T@Vec_19166) (e@@10 Int) ) (! (let ((i@@53 (IndexOfVec_19166 v@@36 e@@10)))
(ite  (not (exists ((i@@54 Int) ) (!  (and (InRangeVec_12105 v@@36 i@@54) (= (|Select__T@[Int]Int_| (|v#Vec_19166| v@@36) i@@54) e@@10))
 :qid |DesignatedDealerbpl.109:13|
 :skolemid |0|
))) (= i@@53 (- 0 1))  (and (and (InRangeVec_12105 v@@36 i@@53) (= (|Select__T@[Int]Int_| (|v#Vec_19166| v@@36) i@@53) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (>= j@@10 0) (< j@@10 i@@53)) (not (= (|Select__T@[Int]Int_| (|v#Vec_19166| v@@36) j@@10) e@@10)))
 :qid |DesignatedDealerbpl.117:17|
 :skolemid |1|
)))))
 :qid |DesignatedDealerbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_19166 v@@36 e@@10))
)))
(assert (forall ((v@@37 T@Vec_53785) (e@@11 T@$1_ValidatorConfig_Config) ) (! (let ((i@@55 (IndexOfVec_53785 v@@37 e@@11)))
(ite  (not (exists ((i@@56 Int) ) (!  (and (InRangeVec_48265 v@@37 i@@56) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_53785| v@@37) i@@56) e@@11))
 :qid |DesignatedDealerbpl.109:13|
 :skolemid |0|
))) (= i@@55 (- 0 1))  (and (and (InRangeVec_48265 v@@37 i@@55) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_53785| v@@37) i@@55) e@@11)) (forall ((j@@11 Int) ) (!  (=> (and (>= j@@11 0) (< j@@11 i@@55)) (not (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_53785| v@@37) j@@11) e@@11)))
 :qid |DesignatedDealerbpl.117:17|
 :skolemid |1|
)))))
 :qid |DesignatedDealerbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_53785 v@@37 e@@11))
)))
(assert (forall ((v@@38 T@Vec_53824) (e@@12 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@57 (IndexOfVec_53824 v@@38 e@@12)))
(ite  (not (exists ((i@@58 Int) ) (!  (and (InRangeVec_46858 v@@38 i@@58) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_53824| v@@38) i@@58) e@@12))
 :qid |DesignatedDealerbpl.109:13|
 :skolemid |0|
))) (= i@@57 (- 0 1))  (and (and (InRangeVec_46858 v@@38 i@@57) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_53824| v@@38) i@@57) e@@12)) (forall ((j@@12 Int) ) (!  (=> (and (>= j@@12 0) (< j@@12 i@@57)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_53824| v@@38) j@@12) e@@12)))
 :qid |DesignatedDealerbpl.117:17|
 :skolemid |1|
)))))
 :qid |DesignatedDealerbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_53824 v@@38 e@@12))
)))
(assert (forall ((v@@39 T@Vec_53863) (e@@13 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@59 (IndexOfVec_53863 v@@39 e@@13)))
(ite  (not (exists ((i@@60 Int) ) (!  (and (InRangeVec_47059 v@@39 i@@60) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_53863| v@@39) i@@60) e@@13))
 :qid |DesignatedDealerbpl.109:13|
 :skolemid |0|
))) (= i@@59 (- 0 1))  (and (and (InRangeVec_47059 v@@39 i@@59) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_53863| v@@39) i@@59) e@@13)) (forall ((j@@13 Int) ) (!  (=> (and (>= j@@13 0) (< j@@13 i@@59)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_53863| v@@39) j@@13) e@@13)))
 :qid |DesignatedDealerbpl.117:17|
 :skolemid |1|
)))))
 :qid |DesignatedDealerbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_53863 v@@39 e@@13))
)))
(assert (forall ((v@@40 T@Vec_53941) (e@@14 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@61 (IndexOfVec_53941 v@@40 e@@14)))
(ite  (not (exists ((i@@62 Int) ) (!  (and (InRangeVec_47260 v@@40 i@@62) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_53941| v@@40) i@@62) e@@14))
 :qid |DesignatedDealerbpl.109:13|
 :skolemid |0|
))) (= i@@61 (- 0 1))  (and (and (InRangeVec_47260 v@@40 i@@61) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_53941| v@@40) i@@61) e@@14)) (forall ((j@@14 Int) ) (!  (=> (and (>= j@@14 0) (< j@@14 i@@61)) (not (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_53941| v@@40) j@@14) e@@14)))
 :qid |DesignatedDealerbpl.117:17|
 :skolemid |1|
)))))
 :qid |DesignatedDealerbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_53941 v@@40 e@@14))
)))
(assert (forall ((v@@41 T@Vec_54153) (e@@15 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@63 (IndexOfVec_54153 v@@41 e@@15)))
(ite  (not (exists ((i@@64 Int) ) (!  (and (InRangeVec_47863 v@@41 i@@64) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_54153| v@@41) i@@64) e@@15))
 :qid |DesignatedDealerbpl.109:13|
 :skolemid |0|
))) (= i@@63 (- 0 1))  (and (and (InRangeVec_47863 v@@41 i@@63) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_54153| v@@41) i@@63) e@@15)) (forall ((j@@15 Int) ) (!  (=> (and (>= j@@15 0) (< j@@15 i@@63)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_54153| v@@41) j@@15) e@@15)))
 :qid |DesignatedDealerbpl.117:17|
 :skolemid |1|
)))))
 :qid |DesignatedDealerbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_54153 v@@41 e@@15))
)))
(assert (forall ((v@@42 T@Vec_54192) (e@@16 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@65 (IndexOfVec_54192 v@@42 e@@16)))
(ite  (not (exists ((i@@66 Int) ) (!  (and (InRangeVec_47662 v@@42 i@@66) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_54192| v@@42) i@@66) e@@16))
 :qid |DesignatedDealerbpl.109:13|
 :skolemid |0|
))) (= i@@65 (- 0 1))  (and (and (InRangeVec_47662 v@@42 i@@65) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_54192| v@@42) i@@65) e@@16)) (forall ((j@@16 Int) ) (!  (=> (and (>= j@@16 0) (< j@@16 i@@65)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_54192| v@@42) j@@16) e@@16)))
 :qid |DesignatedDealerbpl.117:17|
 :skolemid |1|
)))))
 :qid |DesignatedDealerbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_54192 v@@42 e@@16))
)))
(assert (forall ((v@@43 T@Vec_54231) (e@@17 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (let ((i@@67 (IndexOfVec_54231 v@@43 e@@17)))
(ite  (not (exists ((i@@68 Int) ) (!  (and (InRangeVec_47461 v@@43 i@@68) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_54231| v@@43) i@@68) e@@17))
 :qid |DesignatedDealerbpl.109:13|
 :skolemid |0|
))) (= i@@67 (- 0 1))  (and (and (InRangeVec_47461 v@@43 i@@67) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_54231| v@@43) i@@67) e@@17)) (forall ((j@@17 Int) ) (!  (=> (and (>= j@@17 0) (< j@@17 i@@67)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_54231| v@@43) j@@17) e@@17)))
 :qid |DesignatedDealerbpl.117:17|
 :skolemid |1|
)))))
 :qid |DesignatedDealerbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_54231 v@@43 e@@17))
)))
(assert (forall ((v@@44 T@Vec_54333) (e@@18 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@69 (IndexOfVec_54333 v@@44 e@@18)))
(ite  (not (exists ((i@@70 Int) ) (!  (and (InRangeVec_48064 v@@44 i@@70) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_54333| v@@44) i@@70) e@@18))
 :qid |DesignatedDealerbpl.109:13|
 :skolemid |0|
))) (= i@@69 (- 0 1))  (and (and (InRangeVec_48064 v@@44 i@@69) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_54333| v@@44) i@@69) e@@18)) (forall ((j@@18 Int) ) (!  (=> (and (>= j@@18 0) (< j@@18 i@@69)) (not (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_54333| v@@44) j@@18) e@@18)))
 :qid |DesignatedDealerbpl.117:17|
 :skolemid |1|
)))))
 :qid |DesignatedDealerbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_54333 v@@44 e@@18))
)))
(assert (forall ((|l#0| Bool) (i@@71 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@71) |l#0|)
 :qid |DesignatedDealerbpl.275:54|
 :skolemid |467|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@71))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_53699|) (|l#1| |T@[$1_Event_EventHandle]Multiset_53699|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_53699_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_53699| (|Select__T@[$1_Event_EventHandle]Multiset_53699_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_53699| (|Select__T@[$1_Event_EventHandle]Multiset_53699_| |l#1| handle@@0))))
(Multiset_53699 (|lambda#30| (|v#Multiset_53699| (|Select__T@[$1_Event_EventHandle]Multiset_53699_| |l#0@@0| handle@@0)) (|v#Multiset_53699| (|Select__T@[$1_Event_EventHandle]Multiset_53699_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |DesignatedDealerbpl.2778:13|
 :skolemid |468|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_53699_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2| Int) (|l#3| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5| Int) (|l#6| T@$1_DiemAccount_KeyRotationCapability) (i@@72 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@72) (ite  (and (>= i@@72 |l#0@@1|) (< i@@72 |l#1@@0|)) (ite (< i@@72 |l#2|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3| i@@72) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4| (- i@@72 |l#5|))) |l#6|))
 :qid |DesignatedDealerbpl.73:19|
 :skolemid |469|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@72))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@0| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| T@$1_DiemAccount_KeyRotationCapability) (i@@73 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@73) (ite  (and (<= |l#0@@2| i@@73) (< i@@73 |l#1@@1|)) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#2@@0| (- (- |l#3@@0| i@@73) |l#4@@0|)) |l#5@@0|))
 :qid |DesignatedDealerbpl.82:30|
 :skolemid |470|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@73))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@1| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@1| Int) (|l#6@@0| T@$1_DiemAccount_KeyRotationCapability) (j@@19 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@19) (ite  (and (>= j@@19 |l#0@@3|) (< j@@19 |l#1@@2|)) (ite (< j@@19 |l#2@@1|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@1| j@@19) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@1| (+ j@@19 |l#5@@1|))) |l#6@@0|))
 :qid |DesignatedDealerbpl.63:20|
 :skolemid |471|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@19))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@2| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@2| Int) (|l#6@@1| T@$1_DiemAccount_WithdrawCapability) (i@@74 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@74) (ite  (and (>= i@@74 |l#0@@4|) (< i@@74 |l#1@@3|)) (ite (< i@@74 |l#2@@2|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@2| i@@74) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@2| (- i@@74 |l#5@@2|))) |l#6@@1|))
 :qid |DesignatedDealerbpl.73:19|
 :skolemid |472|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@74))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@3| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| T@$1_DiemAccount_WithdrawCapability) (i@@75 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@75) (ite  (and (<= |l#0@@5| i@@75) (< i@@75 |l#1@@4|)) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#2@@3| (- (- |l#3@@3| i@@75) |l#4@@3|)) |l#5@@3|))
 :qid |DesignatedDealerbpl.82:30|
 :skolemid |473|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@75))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@4| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@4| Int) (|l#6@@2| T@$1_DiemAccount_WithdrawCapability) (j@@20 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@20) (ite  (and (>= j@@20 |l#0@@6|) (< j@@20 |l#1@@5|)) (ite (< j@@20 |l#2@@4|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@4| j@@20) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@4| (+ j@@20 |l#5@@4|))) |l#6@@2|))
 :qid |DesignatedDealerbpl.63:20|
 :skolemid |474|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@20))
)))
(assert (forall ((|l#0@@7| Int) (|l#1@@6| Int) (|l#2@@5| Int) (|l#3@@5| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@5| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@5| Int) (|l#6@@3| T@$1_DiemSystem_ValidatorInfo) (i@@76 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@76) (ite  (and (>= i@@76 |l#0@@7|) (< i@@76 |l#1@@6|)) (ite (< i@@76 |l#2@@5|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@5| i@@76) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@5| (- i@@76 |l#5@@5|))) |l#6@@3|))
 :qid |DesignatedDealerbpl.73:19|
 :skolemid |475|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@76))
)))
(assert (forall ((|l#0@@8| Int) (|l#1@@7| Int) (|l#2@@6| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#3@@6| Int) (|l#4@@6| Int) (|l#5@@6| T@$1_DiemSystem_ValidatorInfo) (i@@77 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@77) (ite  (and (<= |l#0@@8| i@@77) (< i@@77 |l#1@@7|)) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#2@@6| (- (- |l#3@@6| i@@77) |l#4@@6|)) |l#5@@6|))
 :qid |DesignatedDealerbpl.82:30|
 :skolemid |476|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@77))
)))
(assert (forall ((|l#0@@9| Int) (|l#1@@8| Int) (|l#2@@7| Int) (|l#3@@7| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@7| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@7| Int) (|l#6@@4| T@$1_DiemSystem_ValidatorInfo) (j@@21 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@21) (ite  (and (>= j@@21 |l#0@@9|) (< j@@21 |l#1@@8|)) (ite (< j@@21 |l#2@@7|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@7| j@@21) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@7| (+ j@@21 |l#5@@7|))) |l#6@@4|))
 :qid |DesignatedDealerbpl.63:20|
 :skolemid |477|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@21))
)))
(assert (forall ((|l#0@@10| Int) (|l#1@@9| Int) (|l#2@@8| Int) (|l#3@@8| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#4@@8| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#5@@8| Int) (|l#6@@5| |T@$1_Diem_PreburnWithMetadata'#0'|) (i@@78 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@78) (ite  (and (>= i@@78 |l#0@@10|) (< i@@78 |l#1@@9|)) (ite (< i@@78 |l#2@@8|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#3@@8| i@@78) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#4@@8| (- i@@78 |l#5@@8|))) |l#6@@5|))
 :qid |DesignatedDealerbpl.73:19|
 :skolemid |478|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@78))
)))
(assert (forall ((|l#0@@11| Int) (|l#1@@10| Int) (|l#2@@9| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#3@@9| Int) (|l#4@@9| Int) (|l#5@@9| |T@$1_Diem_PreburnWithMetadata'#0'|) (i@@79 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@79) (ite  (and (<= |l#0@@11| i@@79) (< i@@79 |l#1@@10|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#2@@9| (- (- |l#3@@9| i@@79) |l#4@@9|)) |l#5@@9|))
 :qid |DesignatedDealerbpl.82:30|
 :skolemid |479|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@79))
)))
(assert (forall ((|l#0@@12| Int) (|l#1@@11| Int) (|l#2@@10| Int) (|l#3@@10| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#4@@10| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#5@@10| Int) (|l#6@@6| |T@$1_Diem_PreburnWithMetadata'#0'|) (j@@22 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@22) (ite  (and (>= j@@22 |l#0@@12|) (< j@@22 |l#1@@11|)) (ite (< j@@22 |l#2@@10|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#3@@10| j@@22) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#4@@10| (+ j@@22 |l#5@@10|))) |l#6@@6|))
 :qid |DesignatedDealerbpl.63:20|
 :skolemid |480|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@22))
)))
(assert (forall ((|l#0@@13| Int) (|l#1@@12| Int) (|l#2@@11| Int) (|l#3@@11| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#4@@11| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#5@@11| Int) (|l#6@@7| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (i@@80 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@80) (ite  (and (>= i@@80 |l#0@@13|) (< i@@80 |l#1@@12|)) (ite (< i@@80 |l#2@@11|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#3@@11| i@@80) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#4@@11| (- i@@80 |l#5@@11|))) |l#6@@7|))
 :qid |DesignatedDealerbpl.73:19|
 :skolemid |481|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@80))
)))
(assert (forall ((|l#0@@14| Int) (|l#1@@13| Int) (|l#2@@12| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#3@@12| Int) (|l#4@@12| Int) (|l#5@@12| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (i@@81 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@81) (ite  (and (<= |l#0@@14| i@@81) (< i@@81 |l#1@@13|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#2@@12| (- (- |l#3@@12| i@@81) |l#4@@12|)) |l#5@@12|))
 :qid |DesignatedDealerbpl.82:30|
 :skolemid |482|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@81))
)))
(assert (forall ((|l#0@@15| Int) (|l#1@@14| Int) (|l#2@@13| Int) (|l#3@@13| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#4@@13| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#5@@13| Int) (|l#6@@8| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (j@@23 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@23) (ite  (and (>= j@@23 |l#0@@15|) (< j@@23 |l#1@@14|)) (ite (< j@@23 |l#2@@13|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#3@@13| j@@23) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#4@@13| (+ j@@23 |l#5@@13|))) |l#6@@8|))
 :qid |DesignatedDealerbpl.63:20|
 :skolemid |483|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@23))
)))
(assert (forall ((|l#0@@16| Int) (|l#1@@15| Int) (|l#2@@14| Int) (|l#3@@14| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#4@@14| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#5@@14| Int) (|l#6@@9| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (i@@82 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@82) (ite  (and (>= i@@82 |l#0@@16|) (< i@@82 |l#1@@15|)) (ite (< i@@82 |l#2@@14|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#3@@14| i@@82) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#4@@14| (- i@@82 |l#5@@14|))) |l#6@@9|))
 :qid |DesignatedDealerbpl.73:19|
 :skolemid |484|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@82))
)))
(assert (forall ((|l#0@@17| Int) (|l#1@@16| Int) (|l#2@@15| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#3@@15| Int) (|l#4@@15| Int) (|l#5@@15| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (i@@83 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@83) (ite  (and (<= |l#0@@17| i@@83) (< i@@83 |l#1@@16|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#2@@15| (- (- |l#3@@15| i@@83) |l#4@@15|)) |l#5@@15|))
 :qid |DesignatedDealerbpl.82:30|
 :skolemid |485|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@83))
)))
(assert (forall ((|l#0@@18| Int) (|l#1@@17| Int) (|l#2@@16| Int) (|l#3@@16| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#4@@16| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#5@@16| Int) (|l#6@@10| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (j@@24 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@24) (ite  (and (>= j@@24 |l#0@@18|) (< j@@24 |l#1@@17|)) (ite (< j@@24 |l#2@@16|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#3@@16| j@@24) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#4@@16| (+ j@@24 |l#5@@16|))) |l#6@@10|))
 :qid |DesignatedDealerbpl.63:20|
 :skolemid |486|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@24))
)))
(assert (forall ((|l#0@@19| Int) (|l#1@@18| Int) (|l#2@@17| Int) (|l#3@@17| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@17| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@17| Int) (|l#6@@11| T@$1_VASPDomain_VASPDomain) (i@@84 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@84) (ite  (and (>= i@@84 |l#0@@19|) (< i@@84 |l#1@@18|)) (ite (< i@@84 |l#2@@17|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@17| i@@84) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@17| (- i@@84 |l#5@@17|))) |l#6@@11|))
 :qid |DesignatedDealerbpl.73:19|
 :skolemid |487|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@84))
)))
(assert (forall ((|l#0@@20| Int) (|l#1@@19| Int) (|l#2@@18| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#3@@18| Int) (|l#4@@18| Int) (|l#5@@18| T@$1_VASPDomain_VASPDomain) (i@@85 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@85) (ite  (and (<= |l#0@@20| i@@85) (< i@@85 |l#1@@19|)) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#2@@18| (- (- |l#3@@18| i@@85) |l#4@@18|)) |l#5@@18|))
 :qid |DesignatedDealerbpl.82:30|
 :skolemid |488|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@85))
)))
(assert (forall ((|l#0@@21| Int) (|l#1@@20| Int) (|l#2@@19| Int) (|l#3@@19| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@19| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@19| Int) (|l#6@@12| T@$1_VASPDomain_VASPDomain) (j@@25 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@25) (ite  (and (>= j@@25 |l#0@@21|) (< j@@25 |l#1@@20|)) (ite (< j@@25 |l#2@@19|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@19| j@@25) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@19| (+ j@@25 |l#5@@19|))) |l#6@@12|))
 :qid |DesignatedDealerbpl.63:20|
 :skolemid |489|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@25))
)))
(assert (forall ((|l#0@@22| Int) (|l#1@@21| Int) (|l#2@@20| Int) (|l#3@@20| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@20| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@20| Int) (|l#6@@13| T@$1_ValidatorConfig_Config) (i@@86 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@86) (ite  (and (>= i@@86 |l#0@@22|) (< i@@86 |l#1@@21|)) (ite (< i@@86 |l#2@@20|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@20| i@@86) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@20| (- i@@86 |l#5@@20|))) |l#6@@13|))
 :qid |DesignatedDealerbpl.73:19|
 :skolemid |490|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@86))
)))
(assert (forall ((|l#0@@23| Int) (|l#1@@22| Int) (|l#2@@21| |T@[Int]$1_ValidatorConfig_Config|) (|l#3@@21| Int) (|l#4@@21| Int) (|l#5@@21| T@$1_ValidatorConfig_Config) (i@@87 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@87) (ite  (and (<= |l#0@@23| i@@87) (< i@@87 |l#1@@22|)) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#2@@21| (- (- |l#3@@21| i@@87) |l#4@@21|)) |l#5@@21|))
 :qid |DesignatedDealerbpl.82:30|
 :skolemid |491|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@87))
)))
(assert (forall ((|l#0@@24| Int) (|l#1@@23| Int) (|l#2@@22| Int) (|l#3@@22| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@22| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@22| Int) (|l#6@@14| T@$1_ValidatorConfig_Config) (j@@26 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@26) (ite  (and (>= j@@26 |l#0@@24|) (< j@@26 |l#1@@23|)) (ite (< j@@26 |l#2@@22|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@22| j@@26) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@22| (+ j@@26 |l#5@@22|))) |l#6@@14|))
 :qid |DesignatedDealerbpl.63:20|
 :skolemid |492|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@26))
)))
(assert (forall ((|l#0@@25| Int) (|l#1@@24| Int) (|l#2@@23| Int) (|l#3@@23| |T@[Int]Int|) (|l#4@@23| |T@[Int]Int|) (|l#5@@23| Int) (|l#6@@15| Int) (i@@88 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#27| |l#0@@25| |l#1@@24| |l#2@@23| |l#3@@23| |l#4@@23| |l#5@@23| |l#6@@15|) i@@88) (ite  (and (>= i@@88 |l#0@@25|) (< i@@88 |l#1@@24|)) (ite (< i@@88 |l#2@@23|) (|Select__T@[Int]Int_| |l#3@@23| i@@88) (|Select__T@[Int]Int_| |l#4@@23| (- i@@88 |l#5@@23|))) |l#6@@15|))
 :qid |DesignatedDealerbpl.73:19|
 :skolemid |493|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#27| |l#0@@25| |l#1@@24| |l#2@@23| |l#3@@23| |l#4@@23| |l#5@@23| |l#6@@15|) i@@88))
)))
(assert (forall ((|l#0@@26| Int) (|l#1@@25| Int) (|l#2@@24| |T@[Int]Int|) (|l#3@@24| Int) (|l#4@@24| Int) (|l#5@@24| Int) (i@@89 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@24| |l#3@@24| |l#4@@24| |l#5@@24|) i@@89) (ite  (and (<= |l#0@@26| i@@89) (< i@@89 |l#1@@25|)) (|Select__T@[Int]Int_| |l#2@@24| (- (- |l#3@@24| i@@89) |l#4@@24|)) |l#5@@24|))
 :qid |DesignatedDealerbpl.82:30|
 :skolemid |494|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@24| |l#3@@24| |l#4@@24| |l#5@@24|) i@@89))
)))
(assert (forall ((|l#0@@27| Int) (|l#1@@26| Int) (|l#2@@25| Int) (|l#3@@25| |T@[Int]Int|) (|l#4@@25| |T@[Int]Int|) (|l#5@@25| Int) (|l#6@@16| Int) (j@@27 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#29| |l#0@@27| |l#1@@26| |l#2@@25| |l#3@@25| |l#4@@25| |l#5@@25| |l#6@@16|) j@@27) (ite  (and (>= j@@27 |l#0@@27|) (< j@@27 |l#1@@26|)) (ite (< j@@27 |l#2@@25|) (|Select__T@[Int]Int_| |l#3@@25| j@@27) (|Select__T@[Int]Int_| |l#4@@25| (+ j@@27 |l#5@@25|))) |l#6@@16|))
 :qid |DesignatedDealerbpl.63:20|
 :skolemid |495|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#29| |l#0@@27| |l#1@@26| |l#2@@25| |l#3@@25| |l#4@@25| |l#5@@25| |l#6@@16|) j@@27))
)))
(assert (forall ((|l#0@@28| |T@[$EventRep]Int|) (|l#1@@27| |T@[$EventRep]Int|) (v@@45 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#30| |l#0@@28| |l#1@@27|) v@@45) (- (|Select__T@[$EventRep]Int_| |l#0@@28| v@@45) (|Select__T@[$EventRep]Int_| |l#1@@27| v@@45)))
 :qid |DesignatedDealerbpl.154:29|
 :skolemid |496|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#30| |l#0@@28| |l#1@@27|) v@@45))
)))
; Valid
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@4 () Bool)
(declare-fun |inline$$1_Diem_mint'$1_XUS_XUS'$0$$ret0@1| () |T@$1_Diem_Diem'$1_XUS_XUS'|)
(declare-fun $t37 () |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(declare-fun |Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@3| () T@$Memory_89598)
(declare-fun _$t1 () Int)
(declare-fun |$1_Diem_MintCapability'$1_XUS_XUS'_$memory| () T@$Memory_90240)
(declare-fun _$t0 () T@$signer)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_87591)
(declare-fun $t9 () Int)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun $1_DesignatedDealer_Dealer_$memory () T@$Memory_101340)
(declare-fun _$t2 () Int)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory| () T@$Memory_89598)
(declare-fun |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory@2| () T@$Memory_101696)
(declare-fun $t8 () |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(declare-fun $es@2 () T@$EventStore)
(declare-fun $es () T@$EventStore)
(declare-fun $t10 () T@$1_Event_EventHandle)
(declare-fun $t11 () T@$1_DesignatedDealer_ReceivedMintEvent)
(declare-fun |Store__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep Int) |T@[$EventRep]Int|)
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?x2 Int)) (! (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?y1 T@$EventRep) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$EventRep]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[$1_Event_EventHandle]Multiset_53699_| (|T@[$1_Event_EventHandle]Multiset_53699| T@$1_Event_EventHandle T@Multiset_53699) |T@[$1_Event_EventHandle]Multiset_53699|)
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_53699|) ( ?x1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_53699)) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_53699_| (|Store__T@[$1_Event_EventHandle]Multiset_53699_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_53699|) ( ?x1 T@$1_Event_EventHandle) ( ?y1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_53699)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$1_Event_EventHandle]Multiset_53699_| (|Store__T@[$1_Event_EventHandle]Multiset_53699_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$1_Event_EventHandle]Multiset_53699_| ?x0 ?y1))) :weight 0)))
(declare-fun $t12 () |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(declare-fun $t13 () T@$1_Event_EventHandle)
(declare-fun $t14 () T@$1_Diem_MintEvent)
(declare-fun $t17@0 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun $abort_code@5 () Int)
(declare-fun |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t16@0| () |T@$1_Diem_Diem'$1_XUS_XUS'|)
(declare-fun |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t18@0| () |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@2| () T@$Memory_89598)
(declare-fun |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0| () |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(declare-fun |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t19@0| () T@$1_Diem_MintEvent)
(declare-fun |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t15@0| () T@$1_Diem_MintEvent)
(declare-fun |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t20@0| () T@$1_Event_EventHandle)
(declare-fun |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t14@0| () T@$1_Event_EventHandle)
(declare-fun |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t21@0| () Bool)
(declare-fun |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t13@0| () |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(declare-fun $es@1 () T@$EventStore)
(declare-fun $es@0 () T@$EventStore)
(declare-fun $abort_code@4 () Int)
(declare-fun $abort_flag@3 () Bool)
(declare-fun |inline$$1_Diem_mint'$1_XUS_XUS'$0$$temp_0'bool'@1| () Bool)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@1| () T@$Memory_89598)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@0| () T@$Memory_89598)
(declare-fun |Store__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ( ?x1 Int) ( ?x2 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)) (! (= (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|Store__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|Store__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_Diem_mint'$1_XUS_XUS'$0$$temp_0'$1_Diem_CurrencyInfo'$1_XUS_XUS''@1| () |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(declare-fun |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t17@0| () Bool)
(declare-fun |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t10@1| () Int)
(declare-fun |inline$$1_Diem_mint'$1_XUS_XUS'$0$$ret0@0| () |T@$1_Diem_Diem'$1_XUS_XUS'|)
(declare-fun |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t10@0| () Int)
(declare-fun |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t6@0| () Int)
(declare-fun |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t11@1| () |T@$1_Diem_MintCapability'$1_XUS_XUS'|)
(declare-fun |Select__T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'_| (|T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| Int) |T@$1_Diem_MintCapability'$1_XUS_XUS'|)
(declare-fun $abort_flag@2 () Bool)
(declare-fun $abort_code@3 () Int)
(declare-fun |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t7@1| () Bool)
(declare-fun |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t9@0| () Int)
(declare-fun |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t5@0| () |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(declare-fun $t35 () |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$modifies| () |T@[Int]Bool|)
(declare-fun |inline$$1_Event_emit_event'$1_DesignatedDealer_ReceivedMintEvent'$0$handle@1| () T@$1_Event_EventHandle)
(declare-fun $t31@0 () T@$Mutation_83026)
(declare-fun $t34@0 () T@$1_DesignatedDealer_ReceivedMintEvent)
(declare-fun $t33 () Bool)
(declare-fun $t32 () T@Vec_19166)
(declare-fun $t17 () Int)
(declare-fun $t30@1 () T@$Mutation_117917)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun $t30 () T@$Mutation_117917)
(declare-fun $t30@0 () T@$Mutation_117917)
(declare-fun MapConstVec_12334 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_12334 () Int)
(declare-fun |Select__T@[Int]$1_DesignatedDealer_Dealer_| (|T@[Int]$1_DesignatedDealer_Dealer| Int) T@$1_DesignatedDealer_Dealer)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun $1_DesignatedDealer_Dealer_$modifies () |T@[Int]Bool|)
(declare-fun $t27@0 () Int)
(declare-fun $t26 () |T@$1_DesignatedDealer_TierInfo'$1_XUS_XUS'|)
(declare-fun $t28@0 () Int)
(declare-fun $t29@0 () T@Vec_19166)
(declare-fun |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory@1| () T@$Memory_101696)
(declare-fun |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory| () T@$Memory_101696)
(declare-fun $t26@0 () |T@$1_DesignatedDealer_TierInfo'$1_XUS_XUS'|)
(declare-fun |Select__T@[Int]$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_| (|T@[Int]$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| Int) |T@$1_DesignatedDealer_TierInfo'$1_XUS_XUS'|)
(declare-fun |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory@0| () T@$Memory_101696)
(declare-fun $abort_code@0 () Int)
(declare-fun $t25@0 () Bool)
(declare-fun |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$modifies| () |T@[Int]Bool|)
(declare-fun $t22 () Bool)
(declare-fun $t24 () Int)
(declare-fun inline$$Gt$0$dst@1 () Bool)
(declare-fun $t21 () Int)
(declare-fun $t16 () Bool)
(declare-fun $t15 () Int)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_87469)
(declare-fun $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory () T@$Memory_87918)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory () T@$Memory_88421)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|T@[Int]$1_ValidatorConfig_ValidatorConfig| Int) T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun |Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| Int) |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory| () T@$Memory_89040)
(declare-fun |$1_Diem_Preburn'$1_XUS_XUS'_$memory| () T@$Memory_96226)
(declare-fun $1_DualAttestation_Credential_$memory () T@$Memory_100485)
(declare-fun $1_DiemAccount_DiemAccount_$memory () T@$Memory_106494)
(declare-fun $1_VASPDomain_VASPDomainManager_$memory () T@$Memory_100091)
(declare-fun $1_VASPDomain_VASPDomains_$memory () T@$Memory_100208)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory| () T@$Memory_103100)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory| () T@$Memory_103160)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory () T@$Memory_89007)
(declare-fun $1_VASP_ParentVASP_$memory () T@$Memory_100305)
(declare-fun $1_VASP_ChildVASP_$memory () T@$Memory_100241)
(declare-fun $1_Signer_is_txn_signer (T@$signer) Bool)
(declare-fun $1_Signer_is_txn_signer_addr (Int) Bool)
(declare-fun _$t3 () Int)
(declare-fun $t31 () T@$Mutation_83026)
(push 1)
(set-info :boogie-vc-id $1_DesignatedDealer_tiered_mint$verify_instantiated_0)
(assert (not
 (=> (= (ControlFlow 0 0) 173435) (let ((anon40_Else_correct  (=> (not $abort_flag@4) (=> (and (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$ret0@1| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$ret0@1|) (= $t37 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_89598| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@3|) 173345816))) (and (=> (= (ControlFlow 0 150511) (- 0 176315)) (not (= _$t1 0))) (=> (not (= _$t1 0)) (and (=> (= (ControlFlow 0 150511) (- 0 176325)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_90240| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) (|$addr#$signer| _$t0))))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_90240| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) (|$addr#$signer| _$t0)))) (and (=> (= (ControlFlow 0 150511) (- 0 176338)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_87591| $1_Roles_RoleId_$memory) $t9)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_87591| $1_Roles_RoleId_$memory) $t9))) (and (=> (= (ControlFlow 0 150511) (- 0 176350)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_87591| $1_Roles_RoleId_$memory) $t9)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_87591| $1_Roles_RoleId_$memory) $t9)) 1))) (and (=> (= (ControlFlow 0 150511) (- 0 176368)) (not (not (= (|$addr#$signer| _$t0) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t0) 186537453))) (and (=> (= (ControlFlow 0 150511) (- 0 176382)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_101340| $1_DesignatedDealer_Dealer_$memory) _$t2)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_101340| $1_DesignatedDealer_Dealer_$memory) _$t2))) (and (=> (= (ControlFlow 0 150511) (- 0 176393)) (not (not (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_89598| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))))) (=> (not (not (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_89598| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 150511) (- 0 176405)) (not (> (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_89598| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) _$t1) $MAX_U128))) (=> (not (> (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_89598| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) _$t1) $MAX_U128)) (and (=> (= (ControlFlow 0 150511) (- 0 176422)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_89598| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_89598| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 150511) (- 0 176432)) (|Select__T@[Int]Bool_| (|domain#$Memory_101340| $1_DesignatedDealer_Dealer_$memory) _$t2)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_101340| $1_DesignatedDealer_Dealer_$memory) _$t2) (and (=> (= (ControlFlow 0 150511) (- 0 176440)) (|Select__T@[Int]Bool_| (|domain#$Memory_89598| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@3|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_89598| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@3|) 173345816) (and (=> (= (ControlFlow 0 150511) (- 0 176448)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_101696| |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory@2|) _$t2))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_101696| |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory@2|) _$t2)) (and (=> (= (ControlFlow 0 150511) (- 0 176457)) (= (|$value#$1_Diem_Diem'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$ret0@1|) _$t1)) (=> (= (|$value#$1_Diem_Diem'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$ret0@1|) _$t1) (and (=> (= (ControlFlow 0 150511) (- 0 176466)) (and (and (and (and (and (and (and (and (and (and (and (and (= (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t37) (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) _$t1) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8)))) (= (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t37) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) _$t1) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8))))) (= (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t37) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) _$t1) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8))))) (= (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t37) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) _$t1) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8))))) (= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t37) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) _$t1) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8))))) (= (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t37) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) _$t1) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8))))) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t37) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) _$t1) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8))))) (= (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t37) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) _$t1) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8))))) (= (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t37) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) _$t1) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8))))) (= (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t37) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) _$t1) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8))))) (= (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t37) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) _$t1) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8))))) (= (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t37) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) _$t1) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8))))) (= (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t37) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) _$t1) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8)))))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (= (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t37) (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) _$t1) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8)))) (= (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t37) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) _$t1) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8))))) (= (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t37) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) _$t1) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8))))) (= (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t37) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) _$t1) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8))))) (= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t37) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) _$t1) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8))))) (= (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t37) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) _$t1) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8))))) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t37) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) _$t1) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8))))) (= (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t37) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) _$t1) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8))))) (= (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t37) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) _$t1) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8))))) (= (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t37) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) _$t1) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8))))) (= (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t37) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) _$t1) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8))))) (= (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t37) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) _$t1) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8))))) (= (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t37) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) _$t1) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t8))))) (and (=> (= (ControlFlow 0 150511) (- 0 176484)) (let ((actual ($EventStore (- (|counter#$EventStore| $es@2) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@2) (|streams#$EventStore| $es)))))
(let ((expected (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_53699_| (|streams#$EventStore| $EmptyEventStore) $t10)))
(let ((stream_new (let ((len (|l#Multiset_53699| stream@@0)))
(let ((cnt (|Select__T@[$EventRep]Int_| (|v#Multiset_53699| stream@@0) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11))))
(Multiset_53699 (|Store__T@[$EventRep]Int_| (|v#Multiset_53699| stream@@0) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11) (+ cnt 1)) (+ len 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_53699_| (|streams#$EventStore| $EmptyEventStore) $t10 stream_new))))))
 (and (<= (|counter#$EventStore| expected) (|counter#$EventStore| actual)) (forall ((handle@@1 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_53699| (|Select__T@[$1_Event_EventHandle]Multiset_53699_| (|streams#$EventStore| expected) handle@@1)) (|l#Multiset_53699| (|Select__T@[$1_Event_EventHandle]Multiset_53699_| (|streams#$EventStore| actual) handle@@1))) (forall ((v@@46 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_53699| (|Select__T@[$1_Event_EventHandle]Multiset_53699_| (|streams#$EventStore| expected) handle@@1)) v@@46) (|Select__T@[$EventRep]Int_| (|v#Multiset_53699| (|Select__T@[$1_Event_EventHandle]Multiset_53699_| (|streams#$EventStore| actual) handle@@1)) v@@46))
 :qid |DesignatedDealerbpl.164:13|
 :skolemid |5|
)))
 :qid |DesignatedDealerbpl.2784:13|
 :skolemid |99|
)))))) (=> (let ((actual@@0 ($EventStore (- (|counter#$EventStore| $es@2) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@2) (|streams#$EventStore| $es)))))
(let ((expected@@0 (let ((stream@@1 (|Select__T@[$1_Event_EventHandle]Multiset_53699_| (|streams#$EventStore| $EmptyEventStore) $t10)))
(let ((stream_new@@0 (let ((len@@0 (|l#Multiset_53699| stream@@1)))
(let ((cnt@@0 (|Select__T@[$EventRep]Int_| (|v#Multiset_53699| stream@@1) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11))))
(Multiset_53699 (|Store__T@[$EventRep]Int_| (|v#Multiset_53699| stream@@1) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11) (+ cnt@@0 1)) (+ len@@0 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_53699_| (|streams#$EventStore| $EmptyEventStore) $t10 stream_new@@0))))))
 (and (<= (|counter#$EventStore| expected@@0) (|counter#$EventStore| actual@@0)) (forall ((handle@@2 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_53699| (|Select__T@[$1_Event_EventHandle]Multiset_53699_| (|streams#$EventStore| expected@@0) handle@@2)) (|l#Multiset_53699| (|Select__T@[$1_Event_EventHandle]Multiset_53699_| (|streams#$EventStore| actual@@0) handle@@2))) (forall ((v@@47 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_53699| (|Select__T@[$1_Event_EventHandle]Multiset_53699_| (|streams#$EventStore| expected@@0) handle@@2)) v@@47) (|Select__T@[$EventRep]Int_| (|v#Multiset_53699| (|Select__T@[$1_Event_EventHandle]Multiset_53699_| (|streams#$EventStore| actual@@0) handle@@2)) v@@47))
 :qid |DesignatedDealerbpl.164:13|
 :skolemid |5|
)))
 :qid |DesignatedDealerbpl.2784:13|
 :skolemid |99|
))))) (and (=> (= (ControlFlow 0 150511) (- 0 176509)) (let ((actual@@1 ($EventStore (- (|counter#$EventStore| $es@2) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@2) (|streams#$EventStore| $es)))))
(let ((expected@@1 (ite  (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t12)) (let ((stream@@2 (|Select__T@[$1_Event_EventHandle]Multiset_53699_| (|streams#$EventStore| (let ((stream@@3 (|Select__T@[$1_Event_EventHandle]Multiset_53699_| (|streams#$EventStore| $EmptyEventStore) $t10)))
(let ((stream_new@@1 (let ((len@@1 (|l#Multiset_53699| stream@@3)))
(let ((cnt@@1 (|Select__T@[$EventRep]Int_| (|v#Multiset_53699| stream@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11))))
(Multiset_53699 (|Store__T@[$EventRep]Int_| (|v#Multiset_53699| stream@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11) (+ cnt@@1 1)) (+ len@@1 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_53699_| (|streams#$EventStore| $EmptyEventStore) $t10 stream_new@@1))))) $t13)))
(let ((stream_new@@2 (let ((len@@2 (|l#Multiset_53699| stream@@2)))
(let ((cnt@@2 (|Select__T@[$EventRep]Int_| (|v#Multiset_53699| stream@@2) (|$ToEventRep'$1_Diem_MintEvent'| $t14))))
(Multiset_53699 (|Store__T@[$EventRep]Int_| (|v#Multiset_53699| stream@@2) (|$ToEventRep'$1_Diem_MintEvent'| $t14) (+ cnt@@2 1)) (+ len@@2 1))))))
($EventStore (+ (|counter#$EventStore| (let ((stream@@3 (|Select__T@[$1_Event_EventHandle]Multiset_53699_| (|streams#$EventStore| $EmptyEventStore) $t10)))
(let ((stream_new@@1 (let ((len@@1 (|l#Multiset_53699| stream@@3)))
(let ((cnt@@1 (|Select__T@[$EventRep]Int_| (|v#Multiset_53699| stream@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11))))
(Multiset_53699 (|Store__T@[$EventRep]Int_| (|v#Multiset_53699| stream@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11) (+ cnt@@1 1)) (+ len@@1 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_53699_| (|streams#$EventStore| $EmptyEventStore) $t10 stream_new@@1))))) 1) (|Store__T@[$1_Event_EventHandle]Multiset_53699_| (|streams#$EventStore| (let ((stream@@3 (|Select__T@[$1_Event_EventHandle]Multiset_53699_| (|streams#$EventStore| $EmptyEventStore) $t10)))
(let ((stream_new@@1 (let ((len@@1 (|l#Multiset_53699| stream@@3)))
(let ((cnt@@1 (|Select__T@[$EventRep]Int_| (|v#Multiset_53699| stream@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11))))
(Multiset_53699 (|Store__T@[$EventRep]Int_| (|v#Multiset_53699| stream@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11) (+ cnt@@1 1)) (+ len@@1 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_53699_| (|streams#$EventStore| $EmptyEventStore) $t10 stream_new@@1))))) $t13 stream_new@@2)))) (let ((stream@@3 (|Select__T@[$1_Event_EventHandle]Multiset_53699_| (|streams#$EventStore| $EmptyEventStore) $t10)))
(let ((stream_new@@1 (let ((len@@1 (|l#Multiset_53699| stream@@3)))
(let ((cnt@@1 (|Select__T@[$EventRep]Int_| (|v#Multiset_53699| stream@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11))))
(Multiset_53699 (|Store__T@[$EventRep]Int_| (|v#Multiset_53699| stream@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11) (+ cnt@@1 1)) (+ len@@1 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_53699_| (|streams#$EventStore| $EmptyEventStore) $t10 stream_new@@1)))))))
 (and (<= (|counter#$EventStore| expected@@1) (|counter#$EventStore| actual@@1)) (forall ((handle@@3 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_53699| (|Select__T@[$1_Event_EventHandle]Multiset_53699_| (|streams#$EventStore| expected@@1) handle@@3)) (|l#Multiset_53699| (|Select__T@[$1_Event_EventHandle]Multiset_53699_| (|streams#$EventStore| actual@@1) handle@@3))) (forall ((v@@48 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_53699| (|Select__T@[$1_Event_EventHandle]Multiset_53699_| (|streams#$EventStore| expected@@1) handle@@3)) v@@48) (|Select__T@[$EventRep]Int_| (|v#Multiset_53699| (|Select__T@[$1_Event_EventHandle]Multiset_53699_| (|streams#$EventStore| actual@@1) handle@@3)) v@@48))
 :qid |DesignatedDealerbpl.164:13|
 :skolemid |5|
)))
 :qid |DesignatedDealerbpl.2784:13|
 :skolemid |99|
)))))) (=> (let ((actual@@2 ($EventStore (- (|counter#$EventStore| $es@2) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@2) (|streams#$EventStore| $es)))))
(let ((expected@@2 (ite  (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t12)) (let ((stream@@4 (|Select__T@[$1_Event_EventHandle]Multiset_53699_| (|streams#$EventStore| (let ((stream@@5 (|Select__T@[$1_Event_EventHandle]Multiset_53699_| (|streams#$EventStore| $EmptyEventStore) $t10)))
(let ((stream_new@@3 (let ((len@@3 (|l#Multiset_53699| stream@@5)))
(let ((cnt@@3 (|Select__T@[$EventRep]Int_| (|v#Multiset_53699| stream@@5) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11))))
(Multiset_53699 (|Store__T@[$EventRep]Int_| (|v#Multiset_53699| stream@@5) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11) (+ cnt@@3 1)) (+ len@@3 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_53699_| (|streams#$EventStore| $EmptyEventStore) $t10 stream_new@@3))))) $t13)))
(let ((stream_new@@4 (let ((len@@4 (|l#Multiset_53699| stream@@4)))
(let ((cnt@@4 (|Select__T@[$EventRep]Int_| (|v#Multiset_53699| stream@@4) (|$ToEventRep'$1_Diem_MintEvent'| $t14))))
(Multiset_53699 (|Store__T@[$EventRep]Int_| (|v#Multiset_53699| stream@@4) (|$ToEventRep'$1_Diem_MintEvent'| $t14) (+ cnt@@4 1)) (+ len@@4 1))))))
($EventStore (+ (|counter#$EventStore| (let ((stream@@5 (|Select__T@[$1_Event_EventHandle]Multiset_53699_| (|streams#$EventStore| $EmptyEventStore) $t10)))
(let ((stream_new@@3 (let ((len@@3 (|l#Multiset_53699| stream@@5)))
(let ((cnt@@3 (|Select__T@[$EventRep]Int_| (|v#Multiset_53699| stream@@5) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11))))
(Multiset_53699 (|Store__T@[$EventRep]Int_| (|v#Multiset_53699| stream@@5) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11) (+ cnt@@3 1)) (+ len@@3 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_53699_| (|streams#$EventStore| $EmptyEventStore) $t10 stream_new@@3))))) 1) (|Store__T@[$1_Event_EventHandle]Multiset_53699_| (|streams#$EventStore| (let ((stream@@5 (|Select__T@[$1_Event_EventHandle]Multiset_53699_| (|streams#$EventStore| $EmptyEventStore) $t10)))
(let ((stream_new@@3 (let ((len@@3 (|l#Multiset_53699| stream@@5)))
(let ((cnt@@3 (|Select__T@[$EventRep]Int_| (|v#Multiset_53699| stream@@5) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11))))
(Multiset_53699 (|Store__T@[$EventRep]Int_| (|v#Multiset_53699| stream@@5) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11) (+ cnt@@3 1)) (+ len@@3 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_53699_| (|streams#$EventStore| $EmptyEventStore) $t10 stream_new@@3))))) $t13 stream_new@@4)))) (let ((stream@@5 (|Select__T@[$1_Event_EventHandle]Multiset_53699_| (|streams#$EventStore| $EmptyEventStore) $t10)))
(let ((stream_new@@3 (let ((len@@3 (|l#Multiset_53699| stream@@5)))
(let ((cnt@@3 (|Select__T@[$EventRep]Int_| (|v#Multiset_53699| stream@@5) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11))))
(Multiset_53699 (|Store__T@[$EventRep]Int_| (|v#Multiset_53699| stream@@5) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11) (+ cnt@@3 1)) (+ len@@3 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_53699_| (|streams#$EventStore| $EmptyEventStore) $t10 stream_new@@3)))))))
 (and (<= (|counter#$EventStore| expected@@2) (|counter#$EventStore| actual@@2)) (forall ((handle@@4 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_53699| (|Select__T@[$1_Event_EventHandle]Multiset_53699_| (|streams#$EventStore| expected@@2) handle@@4)) (|l#Multiset_53699| (|Select__T@[$1_Event_EventHandle]Multiset_53699_| (|streams#$EventStore| actual@@2) handle@@4))) (forall ((v@@49 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_53699| (|Select__T@[$1_Event_EventHandle]Multiset_53699_| (|streams#$EventStore| expected@@2) handle@@4)) v@@49) (|Select__T@[$EventRep]Int_| (|v#Multiset_53699| (|Select__T@[$1_Event_EventHandle]Multiset_53699_| (|streams#$EventStore| actual@@2) handle@@4)) v@@49))
 :qid |DesignatedDealerbpl.164:13|
 :skolemid |5|
)))
 :qid |DesignatedDealerbpl.2784:13|
 :skolemid |99|
))))) (=> (= (ControlFlow 0 150511) (- 0 176546)) (let ((actual@@3 ($EventStore (- (|counter#$EventStore| $es@2) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@2) (|streams#$EventStore| $es)))))
(let ((expected@@3 (ite  (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t12)) (let ((stream@@6 (|Select__T@[$1_Event_EventHandle]Multiset_53699_| (|streams#$EventStore| (let ((stream@@7 (|Select__T@[$1_Event_EventHandle]Multiset_53699_| (|streams#$EventStore| $EmptyEventStore) $t10)))
(let ((stream_new@@5 (let ((len@@5 (|l#Multiset_53699| stream@@7)))
(let ((cnt@@5 (|Select__T@[$EventRep]Int_| (|v#Multiset_53699| stream@@7) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11))))
(Multiset_53699 (|Store__T@[$EventRep]Int_| (|v#Multiset_53699| stream@@7) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11) (+ cnt@@5 1)) (+ len@@5 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_53699_| (|streams#$EventStore| $EmptyEventStore) $t10 stream_new@@5))))) $t13)))
(let ((stream_new@@6 (let ((len@@6 (|l#Multiset_53699| stream@@6)))
(let ((cnt@@6 (|Select__T@[$EventRep]Int_| (|v#Multiset_53699| stream@@6) (|$ToEventRep'$1_Diem_MintEvent'| $t14))))
(Multiset_53699 (|Store__T@[$EventRep]Int_| (|v#Multiset_53699| stream@@6) (|$ToEventRep'$1_Diem_MintEvent'| $t14) (+ cnt@@6 1)) (+ len@@6 1))))))
($EventStore (+ (|counter#$EventStore| (let ((stream@@7 (|Select__T@[$1_Event_EventHandle]Multiset_53699_| (|streams#$EventStore| $EmptyEventStore) $t10)))
(let ((stream_new@@5 (let ((len@@5 (|l#Multiset_53699| stream@@7)))
(let ((cnt@@5 (|Select__T@[$EventRep]Int_| (|v#Multiset_53699| stream@@7) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11))))
(Multiset_53699 (|Store__T@[$EventRep]Int_| (|v#Multiset_53699| stream@@7) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11) (+ cnt@@5 1)) (+ len@@5 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_53699_| (|streams#$EventStore| $EmptyEventStore) $t10 stream_new@@5))))) 1) (|Store__T@[$1_Event_EventHandle]Multiset_53699_| (|streams#$EventStore| (let ((stream@@7 (|Select__T@[$1_Event_EventHandle]Multiset_53699_| (|streams#$EventStore| $EmptyEventStore) $t10)))
(let ((stream_new@@5 (let ((len@@5 (|l#Multiset_53699| stream@@7)))
(let ((cnt@@5 (|Select__T@[$EventRep]Int_| (|v#Multiset_53699| stream@@7) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11))))
(Multiset_53699 (|Store__T@[$EventRep]Int_| (|v#Multiset_53699| stream@@7) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11) (+ cnt@@5 1)) (+ len@@5 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_53699_| (|streams#$EventStore| $EmptyEventStore) $t10 stream_new@@5))))) $t13 stream_new@@6)))) (let ((stream@@7 (|Select__T@[$1_Event_EventHandle]Multiset_53699_| (|streams#$EventStore| $EmptyEventStore) $t10)))
(let ((stream_new@@5 (let ((len@@5 (|l#Multiset_53699| stream@@7)))
(let ((cnt@@5 (|Select__T@[$EventRep]Int_| (|v#Multiset_53699| stream@@7) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11))))
(Multiset_53699 (|Store__T@[$EventRep]Int_| (|v#Multiset_53699| stream@@7) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t11) (+ cnt@@5 1)) (+ len@@5 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_53699_| (|streams#$EventStore| $EmptyEventStore) $t10 stream_new@@5)))))))
 (and (<= (|counter#$EventStore| actual@@3) (|counter#$EventStore| expected@@3)) (forall ((handle@@5 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_53699| (|Select__T@[$1_Event_EventHandle]Multiset_53699_| (|streams#$EventStore| actual@@3) handle@@5)) (|l#Multiset_53699| (|Select__T@[$1_Event_EventHandle]Multiset_53699_| (|streams#$EventStore| expected@@3) handle@@5))) (forall ((v@@50 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_53699| (|Select__T@[$1_Event_EventHandle]Multiset_53699_| (|streams#$EventStore| actual@@3) handle@@5)) v@@50) (|Select__T@[$EventRep]Int_| (|v#Multiset_53699| (|Select__T@[$1_Event_EventHandle]Multiset_53699_| (|streams#$EventStore| expected@@3) handle@@5)) v@@50))
 :qid |DesignatedDealerbpl.164:13|
 :skolemid |5|
)))
 :qid |DesignatedDealerbpl.2784:13|
 :skolemid |99|
))))))))))))))))))))))))))))))))))))))))))
(let ((L8_correct  (and (=> (= (ControlFlow 0 148772) (- 0 176045)) (or (or (or (or (or (or (or (or (= _$t1 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_90240| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) (|$addr#$signer| _$t0)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_87591| $1_Roles_RoleId_$memory) $t9))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_87591| $1_Roles_RoleId_$memory) $t9)) 1))) (not (= (|$addr#$signer| _$t0) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_101340| $1_DesignatedDealer_Dealer_$memory) _$t2))) (not (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_89598| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (> (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_89598| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) _$t1) $MAX_U128)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_89598| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (=> (or (or (or (or (or (or (or (or (= _$t1 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_90240| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) (|$addr#$signer| _$t0)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_87591| $1_Roles_RoleId_$memory) $t9))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_87591| $1_Roles_RoleId_$memory) $t9)) 1))) (not (= (|$addr#$signer| _$t0) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_101340| $1_DesignatedDealer_Dealer_$memory) _$t2))) (not (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_89598| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (> (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_89598| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) _$t1) $MAX_U128)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_89598| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (=> (= (ControlFlow 0 148772) (- 0 176133)) (or (or (or (or (or (or (or (or (and (= _$t1 0) (= 7 $t17@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_90240| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) (|$addr#$signer| _$t0))) (= 4 $t17@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_87591| $1_Roles_RoleId_$memory) $t9)) (= 5 $t17@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_87591| $1_Roles_RoleId_$memory) $t9)) 1)) (= 3 $t17@0))) (and (not (= (|$addr#$signer| _$t0) 186537453)) (= 2 $t17@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_101340| $1_DesignatedDealer_Dealer_$memory) _$t2)) (= 5 $t17@0))) (and (not (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_89598| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (= 1 $t17@0))) (and (> (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_89598| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) _$t1) $MAX_U128) (= 8 $t17@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_89598| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= 5 $t17@0))))))))
(let ((anon35_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t17@0 $abort_code@1) (= (ControlFlow 0 150697) 148772))) L8_correct)))
(let ((anon40_Then_correct  (=> (and (and $abort_flag@4 (= $abort_code@5 $abort_code@5)) (and (= $t17@0 $abort_code@5) (= (ControlFlow 0 150525) 148772))) L8_correct)))
(let ((|inline$$1_Diem_mint'$1_XUS_XUS'$0$anon13_correct|  (=> (and (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t16@0|) (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t18@0| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_89598| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@2|) 173345816))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_89598| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@2|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_89598| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@2|) 173345816))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t18@0|) (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) _$t1) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|)))) (= (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t18@0|) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) _$t1) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|))))) (= (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t18@0|) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) _$t1) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|))))) (= (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t18@0|) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) _$t1) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|))))) (= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t18@0|) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) _$t1) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|))))) (= (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t18@0|) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) _$t1) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|))))) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t18@0|) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) _$t1) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|))))) (= (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t18@0|) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) _$t1) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|))))) (= (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t18@0|) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) _$t1) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|))))) (= (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t18@0|) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) _$t1) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|))))) (= (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t18@0|) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) _$t1) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|))))) (= (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t18@0|) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) _$t1) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|))))) (= (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t18@0|) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) _$t1) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0|))))) (= (|$value#$1_Diem_Diem'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t16@0|) _$t1)) (and (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t19@0| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t15@0|) (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t20@0| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t14@0|))) (and (and (and (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t21@0|  (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t13@0|))) (= $es@1 (ite |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t21@0| (let ((stream@@8 (|Select__T@[$1_Event_EventHandle]Multiset_53699_| (|streams#$EventStore| $es@0) |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t20@0|)))
(let ((stream_new@@7 (let ((len@@7 (|l#Multiset_53699| stream@@8)))
(let ((cnt@@7 (|Select__T@[$EventRep]Int_| (|v#Multiset_53699| stream@@8) (|$ToEventRep'$1_Diem_MintEvent'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t19@0|))))
(Multiset_53699 (|Store__T@[$EventRep]Int_| (|v#Multiset_53699| stream@@8) (|$ToEventRep'$1_Diem_MintEvent'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t19@0|) (+ cnt@@7 1)) (+ len@@7 1))))))
($EventStore (+ (|counter#$EventStore| $es@0) 1) (|Store__T@[$1_Event_EventHandle]Multiset_53699_| (|streams#$EventStore| $es@0) |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t20@0| stream_new@@7)))) $es@0))) (and (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t16@0| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t16@0|) (= $abort_code@5 $abort_code@4))) (and (and (= $es@2 $es@1) (= $abort_flag@4 $abort_flag@3)) (and (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$ret0@1| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t16@0|) (= |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@3| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@2|))))) (and (=> (= (ControlFlow 0 150047) 150525) anon40_Then_correct) (=> (= (ControlFlow 0 150047) 150511) anon40_Else_correct))))))
(let ((|inline$$1_Diem_mint'$1_XUS_XUS'$0$anon18_Else_correct|  (=> (and (and (not |inline$$1_Diem_mint'$1_XUS_XUS'$0$$temp_0'bool'@1|) (= |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@1| ($Memory_89598 (|Store__T@[Int]Bool_| (|domain#$Memory_89598| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816 false) (|contents#$Memory_89598| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|)))) (and (= |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@2| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@1|) (= (ControlFlow 0 149945) 150047))) |inline$$1_Diem_mint'$1_XUS_XUS'$0$anon13_correct|)))
(let ((|inline$$1_Diem_mint'$1_XUS_XUS'$0$anon18_Then_correct|  (=> (and (and |inline$$1_Diem_mint'$1_XUS_XUS'$0$$temp_0'bool'@1| (= |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@0| ($Memory_89598 (|Store__T@[Int]Bool_| (|domain#$Memory_89598| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816 true) (|Store__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_89598| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816 |inline$$1_Diem_mint'$1_XUS_XUS'$0$$temp_0'$1_Diem_CurrencyInfo'$1_XUS_XUS''@1|)))) (and (= |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@2| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@0|) (= (ControlFlow 0 150059) 150047))) |inline$$1_Diem_mint'$1_XUS_XUS'$0$anon13_correct|)))
(let ((|inline$$1_Diem_mint'$1_XUS_XUS'$0$anon17_Else_correct|  (=> (not |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t17@0|) (and (=> (= (ControlFlow 0 149933) 150059) |inline$$1_Diem_mint'$1_XUS_XUS'$0$anon18_Then_correct|) (=> (= (ControlFlow 0 149933) 149945) |inline$$1_Diem_mint'$1_XUS_XUS'$0$anon18_Else_correct|)))))
(let ((|inline$$1_Diem_mint'$1_XUS_XUS'$0$L3_correct|  (=> (= $abort_code@5 |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t10@1|) (=> (and (and (= $es@2 $es@0) (= $abort_flag@4 true)) (and (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$ret0@1| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$ret0@0|) (= |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@3| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|))) (and (=> (= (ControlFlow 0 149813) 150525) anon40_Then_correct) (=> (= (ControlFlow 0 149813) 150511) anon40_Else_correct))))))
(let ((|inline$$1_Diem_mint'$1_XUS_XUS'$0$anon17_Then_correct|  (=> |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t17@0| (=> (and (and (or (or (and (not (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_89598| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (= 1 |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t10@0|)) (and (> (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_89598| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) _$t1) $MAX_U128) (= 8 |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t10@0|))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_89598| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= 5 |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t10@0|))) (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t10@0| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t10@0|)) (and (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t10@1| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t10@0|) (= (ControlFlow 0 150127) 149813))) |inline$$1_Diem_mint'$1_XUS_XUS'$0$L3_correct|))))
(let ((|inline$$1_Diem_mint'$1_XUS_XUS'$0$anon16_Else_correct|  (=> (and (not $abort_flag@3) (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t12@0| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_89598| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (=> (and (and (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t13@0| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_89598| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t14@0| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t13@0|))) (and (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t15@0| ($1_Diem_MintEvent _$t1 (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t13@0|))) (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t17@0|  (or (or (not (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_89598| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (> (+ (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_89598| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) _$t1) $MAX_U128)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_89598| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))))) (and (=> (= (ControlFlow 0 149927) 150127) |inline$$1_Diem_mint'$1_XUS_XUS'$0$anon17_Then_correct|) (=> (= (ControlFlow 0 149927) 149933) |inline$$1_Diem_mint'$1_XUS_XUS'$0$anon17_Else_correct|))))))
(let ((|inline$$1_Diem_mint'$1_XUS_XUS'$0$anon16_Then_correct|  (=> (and (and $abort_flag@3 (= $abort_code@4 $abort_code@4)) (and (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t10@1| $abort_code@4) (= (ControlFlow 0 150141) 149813))) |inline$$1_Diem_mint'$1_XUS_XUS'$0$L3_correct|)))
(let ((|inline$$1_Diem_mint'$1_XUS_XUS'$0$anon15_Then$1_correct|  (=> (and (= $abort_flag@3 true) (= $abort_code@4 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 150193) 150141) |inline$$1_Diem_mint'$1_XUS_XUS'$0$anon16_Then_correct|) (=> (= (ControlFlow 0 150193) 149927) |inline$$1_Diem_mint'$1_XUS_XUS'$0$anon16_Else_correct|)))))
(let ((|inline$$1_Diem_mint'$1_XUS_XUS'$0$anon15_Then_correct|  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_90240| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t6@0|)) (= (ControlFlow 0 150191) 150193)) |inline$$1_Diem_mint'$1_XUS_XUS'$0$anon15_Then$1_correct|)))
(let ((|inline$$1_Diem_mint'$1_XUS_XUS'$0$anon15_Else_correct|  (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_90240| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t6@0|) (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t11@1| (|Select__T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'_| (|contents#$Memory_90240| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t6@0|))) (and (= $abort_flag@3 $abort_flag@2) (= $abort_code@4 $abort_code@3))) (and (=> (= (ControlFlow 0 149833) 150141) |inline$$1_Diem_mint'$1_XUS_XUS'$0$anon16_Then_correct|) (=> (= (ControlFlow 0 149833) 149927) |inline$$1_Diem_mint'$1_XUS_XUS'$0$anon16_Else_correct|)))))
(let ((|inline$$1_Diem_mint'$1_XUS_XUS'$0$anon14_Then_correct|  (=> |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t7@1| (and (=> (= (ControlFlow 0 149819) 150191) |inline$$1_Diem_mint'$1_XUS_XUS'$0$anon15_Then_correct|) (=> (= (ControlFlow 0 149819) 149833) |inline$$1_Diem_mint'$1_XUS_XUS'$0$anon15_Else_correct|)))))
(let ((|inline$$1_Diem_mint'$1_XUS_XUS'$0$anon14_Else_correct|  (=> (and (and (not |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t7@1|) (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t9@0| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t9@0|)) (and (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t10@1| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t9@0|) (= (ControlFlow 0 149807) 149813))) |inline$$1_Diem_mint'$1_XUS_XUS'$0$L3_correct|)))
(let ((|inline$$1_Diem_mint'$1_XUS_XUS'$0$anon0_correct|  (=> (and (and (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t5@0| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_89598| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= _$t0 _$t0)) (and (= _$t1 _$t1) (|$IsValid'address'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t6@0|))) (=> (and (and (and (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t6@0| (|$addr#$signer| _$t0)) (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t6@0| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t6@0|)) (and (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t7@1| (|Select__T@[Int]Bool_| (|domain#$Memory_90240| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t6@0|)) (|$IsValid'u64'| 9))) (and (and (|$IsValid'u64'| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t9@0|) (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t9@0| 4)) (and (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t9@0| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t9@0|) (= |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t7@1| |inline$$1_Diem_mint'$1_XUS_XUS'$0$$t7@1|)))) (and (=> (= (ControlFlow 0 149791) 149819) |inline$$1_Diem_mint'$1_XUS_XUS'$0$anon14_Then_correct|) (=> (= (ControlFlow 0 149791) 149807) |inline$$1_Diem_mint'$1_XUS_XUS'$0$anon14_Else_correct|))))))
(let ((anon39_Else_correct  (=> (and (not $abort_flag@2) (= $t35 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_89598| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 150199) (- 0 175407)) (|Select__T@[Int]Bool_| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$modifies| 173345816)) (=> (|Select__T@[Int]Bool_| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$modifies| 173345816) (=> (= (ControlFlow 0 150199) 149791) |inline$$1_Diem_mint'$1_XUS_XUS'$0$anon0_correct|))))))
(let ((anon39_Then_correct  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= $t17@0 $abort_code@3) (= (ControlFlow 0 150539) 148772))) L8_correct)))
(let ((|inline$$1_Event_emit_event'$1_DesignatedDealer_ReceivedMintEvent'$0$anon0_correct|  (=> (and (= |inline$$1_Event_emit_event'$1_DesignatedDealer_ReceivedMintEvent'$0$handle@1| (|v#$Mutation_83026| $t31@0)) (= $es@0 (let ((stream@@9 (|Select__T@[$1_Event_EventHandle]Multiset_53699_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_DesignatedDealer_ReceivedMintEvent'$0$handle@1|)))
(let ((stream_new@@8 (let ((len@@8 (|l#Multiset_53699| stream@@9)))
(let ((cnt@@8 (|Select__T@[$EventRep]Int_| (|v#Multiset_53699| stream@@9) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t34@0))))
(Multiset_53699 (|Store__T@[$EventRep]Int_| (|v#Multiset_53699| stream@@9) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t34@0) (+ cnt@@8 1)) (+ len@@8 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_53699_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_DesignatedDealer_ReceivedMintEvent'$0$handle@1| stream_new@@8)))))) (and (=> (= (ControlFlow 0 149011) 150539) anon39_Then_correct) (=> (= (ControlFlow 0 149011) 150199) anon39_Else_correct)))))
(let ((anon38_Else_correct  (=> (not $t33) (=> (and (and (|$IsValid'vec'u8''| $t32) (|$IsEqual'vec'u8''| $t32 (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_89598| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (= $t34@0 ($1_DesignatedDealer_ReceivedMintEvent $t32 _$t2 _$t1)) (= (ControlFlow 0 149017) 149011))) |inline$$1_Event_emit_event'$1_DesignatedDealer_ReceivedMintEvent'$0$anon0_correct|))))
(let ((anon38_Then_correct  (=> $t33 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_89598| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= 5 $t17)) (= $t17 $t17)) (and (= $t17@0 $t17) (= (ControlFlow 0 150565) 148772))) L8_correct))))
(let ((anon37_Else_correct  (=> (not $abort_flag@2) (=> (and (= $t31@0 ($Mutation_83026 (|l#$Mutation_117917| $t30@1) (let ((l (|l#Vec_19166| (|p#$Mutation_117917| $t30@1))))
(Vec_19166 (|Store__T@[Int]Int_| (|v#Vec_19166| (|p#$Mutation_117917| $t30@1)) l 0) (+ l 1))) (|$mint_event_handle#$1_DesignatedDealer_Dealer| (|v#$Mutation_117917| $t30@1)))) (= $t33  (not (|Select__T@[Int]Bool_| (|domain#$Memory_89598| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 148912) 150565) anon38_Then_correct) (=> (= (ControlFlow 0 148912) 149017) anon38_Else_correct))))))
(let ((anon37_Then_correct  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= $t17@0 $abort_code@3) (= (ControlFlow 0 150579) 148772))) L8_correct)))
(let ((anon36_Then$1_correct  (=> (= $t30@1 $t30) (=> (and (= $abort_flag@2 true) (= $abort_code@3 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 150631) 150579) anon37_Then_correct) (=> (= (ControlFlow 0 150631) 148912) anon37_Else_correct))))))
(let ((anon36_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_101340| $1_DesignatedDealer_Dealer_$memory) _$t2)) (= (ControlFlow 0 150629) 150631)) anon36_Then$1_correct)))
(let ((anon36_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_101340| $1_DesignatedDealer_Dealer_$memory) _$t2) (=> (and (and (= $t30@0 ($Mutation_117917 ($Global _$t2) (Vec_19166 (MapConstVec_12334 DefaultVecElem_12334) 0) (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_101340| $1_DesignatedDealer_Dealer_$memory) _$t2))) (= $t30@1 $t30@0)) (and (= $abort_flag@2 $abort_flag@1) (= $abort_code@3 $abort_code@2))) (and (=> (= (ControlFlow 0 148880) 150579) anon37_Then_correct) (=> (= (ControlFlow 0 148880) 148912) anon37_Else_correct))))))
(let ((L6_correct  (and (=> (= (ControlFlow 0 148858) (- 0 175163)) (|Select__T@[Int]Bool_| $1_DesignatedDealer_Dealer_$modifies _$t2)) (=> (|Select__T@[Int]Bool_| $1_DesignatedDealer_Dealer_$modifies _$t2) (and (=> (= (ControlFlow 0 148858) 150629) anon36_Then_correct) (=> (= (ControlFlow 0 148858) 148880) anon36_Else_correct))))))
(let ((anon35_Else_correct  (=> (and (and (and (not $abort_flag@0) (= $t27@0 (|$window_start#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| $t26))) (and (= $t28@0 (|$window_inflow#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| $t26)) (= $t29@0 (|$tiers#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| $t26)))) (and (and (= $abort_flag@1 $abort_flag@0) (= |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory@2| |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory@1|)) (and (= $abort_code@2 $abort_code@1) (= (ControlFlow 0 150683) 148858)))) L6_correct)))
(let ((anon34_Then$1_correct  (=> (= |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory@1| |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory|) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 150749) 150697) anon35_Then_correct) (=> (= (ControlFlow 0 150749) 150683) anon35_Else_correct))))))
(let ((anon34_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_101696| |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory|) _$t2)) (= (ControlFlow 0 150747) 150749)) anon34_Then$1_correct)))
(let ((anon34_Else_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_101696| |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory|) _$t2) (= $t26@0 (|Select__T@[Int]$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_| (|contents#$Memory_101696| |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory|) _$t2))) (=> (and (and (= |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory@0| ($Memory_101696 (|Store__T@[Int]Bool_| (|domain#$Memory_101696| |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory|) _$t2 false) (|contents#$Memory_101696| |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory|))) (= |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory@1| |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory@0|)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 150661) 150697) anon35_Then_correct) (=> (= (ControlFlow 0 150661) 150683) anon35_Else_correct))))))
(let ((anon33_Then_correct  (=> $t25@0 (and (=> (= (ControlFlow 0 150641) (- 0 175008)) (|Select__T@[Int]Bool_| |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$modifies| _$t2)) (=> (|Select__T@[Int]Bool_| |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$modifies| _$t2) (and (=> (= (ControlFlow 0 150641) 150747) anon34_Then_correct) (=> (= (ControlFlow 0 150641) 150661) anon34_Else_correct)))))))
(let ((anon33_Else_correct  (=> (not $t25@0) (=> (and (and (= $abort_flag@1 false) (= |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory@2| |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory|)) (and (= $abort_code@2 $abort_code@0) (= (ControlFlow 0 148850) 148858))) L6_correct))))
(let ((anon32_Then_correct  (=> (and $t22 (= $t25@0 (|Select__T@[Int]Bool_| (|domain#$Memory_101696| |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory|) _$t2))) (and (=> (= (ControlFlow 0 148844) 150641) anon33_Then_correct) (=> (= (ControlFlow 0 148844) 148850) anon33_Else_correct)))))
(let ((anon32_Else_correct  (=> (and (and (not $t22) (= $t24 $t24)) (and (= $t17@0 $t24) (= (ControlFlow 0 148834) 148772))) L8_correct)))
(let ((anon31_Then_correct  (=> inline$$Gt$0$dst@1 (=> (and (= $t22 (|Select__T@[Int]Bool_| (|domain#$Memory_101340| $1_DesignatedDealer_Dealer_$memory) _$t2)) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| $t24) (= $t24 5)) (and (= $t24 $t24) (= $t22 $t22))) (and (=> (= (ControlFlow 0 148818) 148844) anon32_Then_correct) (=> (= (ControlFlow 0 148818) 148834) anon32_Else_correct)))))))
(let ((anon31_Else_correct  (=> (and (and (not inline$$Gt$0$dst@1) (= $t21 $t21)) (and (= $t17@0 $t21) (= (ControlFlow 0 148492) 148772))) L8_correct)))
(let ((anon30_Else$1_correct  (=> (|$IsValid'u64'| 4) (=> (and (and (|$IsValid'u64'| $t21) (= $t21 7)) (and (= $t21 $t21) (= inline$$Gt$0$dst@1 inline$$Gt$0$dst@1))) (and (=> (= (ControlFlow 0 148476) 148818) anon31_Then_correct) (=> (= (ControlFlow 0 148476) 148492) anon31_Else_correct))))))
(let ((inline$$Gt$0$anon0_correct  (=> (and (= inline$$Gt$0$dst@1 (> _$t1 0)) (= (ControlFlow 0 148440) 148476)) anon30_Else$1_correct)))
(let ((anon30_Else_correct  (=> (not $t16) (=> (and (|$IsValid'u64'| 0) (= (ControlFlow 0 148446) 148440)) inline$$Gt$0$anon0_correct))))
(let ((anon30_Then_correct  (=> $t16 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_87591| $1_Roles_RoleId_$memory) $t15)) (= 5 $t17)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_87591| $1_Roles_RoleId_$memory) $t15)) 1)) (= 3 $t17))) (and (not (= (|$addr#$signer| _$t0) 186537453)) (= 2 $t17))) (= $t17 $t17)) (and (= $t17@0 $t17) (= (ControlFlow 0 150821) 148772))) L8_correct))))
(let ((anon0$1_correct  (=> (forall ((addr Int) ) (!  (=> (|$IsValid'address'| addr) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_87591| $1_Roles_RoleId_$memory) addr) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_87591| $1_Roles_RoleId_$memory) addr)) 0)) (= addr 173345816)))
 :qid |DesignatedDealerbpl.8066:20|
 :skolemid |390|
)) (=> (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_87469| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_87591| $1_Roles_RoleId_$memory) 173345816) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_87591| $1_Roles_RoleId_$memory) 173345816)) 0))) (forall ((addr@@0 Int) ) (!  (=> (|$IsValid'address'| addr@@0) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_87591| $1_Roles_RoleId_$memory) addr@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_87591| $1_Roles_RoleId_$memory) addr@@0)) 1)) (= addr@@0 186537453)))
 :qid |DesignatedDealerbpl.8074:20|
 :skolemid |391|
))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_87469| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_87591| $1_Roles_RoleId_$memory) 186537453) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_87591| $1_Roles_RoleId_$memory) 186537453)) 1))) (forall ((addr@@1 Int) ) (!  (=> (|$IsValid'address'| addr@@1) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_87591| $1_Roles_RoleId_$memory) addr@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_87591| $1_Roles_RoleId_$memory) addr@@1)) 0)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_87591| $1_Roles_RoleId_$memory) addr@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_87591| $1_Roles_RoleId_$memory) addr@@1)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_87591| $1_Roles_RoleId_$memory) addr@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_87591| $1_Roles_RoleId_$memory) addr@@1)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_87591| $1_Roles_RoleId_$memory) addr@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_87591| $1_Roles_RoleId_$memory) addr@@1)) 2))))))
 :qid |DesignatedDealerbpl.8082:20|
 :skolemid |392|
)))) (=> (and (and (and (forall ((addr@@2 Int) ) (!  (=> (|$IsValid'address'| addr@@2) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_87591| $1_Roles_RoleId_$memory) addr@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_87591| $1_Roles_RoleId_$memory) addr@@2)) 1)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_87591| $1_Roles_RoleId_$memory) addr@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_87591| $1_Roles_RoleId_$memory) addr@@2)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_87591| $1_Roles_RoleId_$memory) addr@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_87591| $1_Roles_RoleId_$memory) addr@@2)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_87591| $1_Roles_RoleId_$memory) addr@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_87591| $1_Roles_RoleId_$memory) addr@@2)) 2))))))
 :qid |DesignatedDealerbpl.8086:20|
 :skolemid |393|
)) (forall ((addr@@3 Int) ) (!  (=> (|$IsValid'address'| addr@@3) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_87591| $1_Roles_RoleId_$memory) addr@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_87591| $1_Roles_RoleId_$memory) addr@@3)) 3)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_87591| $1_Roles_RoleId_$memory) addr@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_87591| $1_Roles_RoleId_$memory) addr@@3)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_87591| $1_Roles_RoleId_$memory) addr@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_87591| $1_Roles_RoleId_$memory) addr@@3)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_87591| $1_Roles_RoleId_$memory) addr@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_87591| $1_Roles_RoleId_$memory) addr@@3)) 2))))))
 :qid |DesignatedDealerbpl.8090:20|
 :skolemid |394|
))) (and (forall ((addr@@4 Int) ) (!  (=> (|$IsValid'address'| addr@@4) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_87591| $1_Roles_RoleId_$memory) addr@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_87591| $1_Roles_RoleId_$memory) addr@@4)) 4)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_87591| $1_Roles_RoleId_$memory) addr@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_87591| $1_Roles_RoleId_$memory) addr@@4)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_87591| $1_Roles_RoleId_$memory) addr@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_87591| $1_Roles_RoleId_$memory) addr@@4)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_87591| $1_Roles_RoleId_$memory) addr@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_87591| $1_Roles_RoleId_$memory) addr@@4)) 2))))))
 :qid |DesignatedDealerbpl.8094:20|
 :skolemid |395|
)) (forall ((addr@@5 Int) ) (!  (=> (|$IsValid'address'| addr@@5) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_87591| $1_Roles_RoleId_$memory) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_87591| $1_Roles_RoleId_$memory) addr@@5)) 2)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_87591| $1_Roles_RoleId_$memory) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_87591| $1_Roles_RoleId_$memory) addr@@5)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_87591| $1_Roles_RoleId_$memory) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_87591| $1_Roles_RoleId_$memory) addr@@5)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_87591| $1_Roles_RoleId_$memory) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_87591| $1_Roles_RoleId_$memory) addr@@5)) 2)))))
 :qid |DesignatedDealerbpl.8098:20|
 :skolemid |396|
)))) (and (and (forall ((addr@@6 Int) ) (!  (=> (|$IsValid'address'| addr@@6) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_87591| $1_Roles_RoleId_$memory) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_87591| $1_Roles_RoleId_$memory) addr@@6)) 5)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_87591| $1_Roles_RoleId_$memory) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_87591| $1_Roles_RoleId_$memory) addr@@6)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_87591| $1_Roles_RoleId_$memory) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_87591| $1_Roles_RoleId_$memory) addr@@6)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_87591| $1_Roles_RoleId_$memory) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_87591| $1_Roles_RoleId_$memory) addr@@6)) 2)))))
 :qid |DesignatedDealerbpl.8102:20|
 :skolemid |397|
)) (forall ((addr@@7 Int) ) (!  (=> (|$IsValid'address'| addr@@7) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_87591| $1_Roles_RoleId_$memory) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_87591| $1_Roles_RoleId_$memory) addr@@7)) 6)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_87591| $1_Roles_RoleId_$memory) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_87591| $1_Roles_RoleId_$memory) addr@@7)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_87591| $1_Roles_RoleId_$memory) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_87591| $1_Roles_RoleId_$memory) addr@@7)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_87591| $1_Roles_RoleId_$memory) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_87591| $1_Roles_RoleId_$memory) addr@@7)) 2)))))
 :qid |DesignatedDealerbpl.8106:20|
 :skolemid |398|
))) (and (forall ((addr@@8 Int) ) (!  (=> (|$IsValid'address'| addr@@8) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_87918| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@8) (and (|Select__T@[Int]Bool_| (|domain#$Memory_87591| $1_Roles_RoleId_$memory) addr@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_87591| $1_Roles_RoleId_$memory) addr@@8)) 4))))
 :qid |DesignatedDealerbpl.8110:20|
 :skolemid |399|
)) (forall ((addr@@9 Int) ) (!  (=> (|$IsValid'address'| addr@@9) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_88421| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@9) (and (|Select__T@[Int]Bool_| (|domain#$Memory_87591| $1_Roles_RoleId_$memory) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_87591| $1_Roles_RoleId_$memory) addr@@9)) 3))))
 :qid |DesignatedDealerbpl.8114:20|
 :skolemid |400|
))))) (=> (and (and (and (and (forall ((addr@@10 Int) ) (!  (=> (|$IsValid'address'| addr@@10) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_88421| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@10) (and (|Select__T@[Int]Bool_| (|domain#$Memory_87591| $1_Roles_RoleId_$memory) addr@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_87591| $1_Roles_RoleId_$memory) addr@@10)) 3))))
 :qid |DesignatedDealerbpl.8118:20|
 :skolemid |401|
)) (forall ((addr@@11 Int) ) (!  (=> (|$IsValid'address'| addr@@11) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_88421| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@11) (not (= (|l#Vec_53785| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_88421| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@11)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_87591| $1_Roles_RoleId_$memory) addr@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_87591| $1_Roles_RoleId_$memory) addr@@11)) 3))))
 :qid |DesignatedDealerbpl.8122:20|
 :skolemid |402|
))) (and (let (($range_0 ($Range 0 (|l#Vec_53941| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@12 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_89040| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@12))))))))
(forall (($i_1 Int) ) (!  (=> ($InRange $range_0 $i_1) (let ((i1 $i_1))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_87591| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_53941| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@13 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_89040| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@13))))) i1))) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_87591| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_53941| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@13 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_89040| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@13))))) i1)))) 3))))
 :qid |DesignatedDealerbpl.8126:151|
 :skolemid |403|
))) (forall ((mint_cap_owner Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_90240| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner) (and (|Select__T@[Int]Bool_| (|domain#$Memory_87591| $1_Roles_RoleId_$memory) mint_cap_owner) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_87591| $1_Roles_RoleId_$memory) mint_cap_owner)) 1))))
 :qid |DesignatedDealerbpl.8131:20|
 :skolemid |404|
)))) (and (and (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_89598| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_89598| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (forall ((mint_cap_owner1 Int) (mint_cap_owner2 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner1) (=> (|$IsValid'address'| mint_cap_owner2) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_90240| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner1) (|Select__T@[Int]Bool_| (|domain#$Memory_90240| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner2)) (= mint_cap_owner1 mint_cap_owner2))))
 :qid |DesignatedDealerbpl.8135:104|
 :skolemid |405|
))) (forall ((addr3 Int) ) (!  (=> (|$IsValid'address'| addr3) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_90240| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) addr3) (and (|Select__T@[Int]Bool_| (|domain#$Memory_89598| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_89598| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))))))
 :qid |DesignatedDealerbpl.8139:20|
 :skolemid |406|
))) (and (forall ((addr@@14 Int) ) (!  (=> (|$IsValid'address'| addr@@14) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96226| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr@@14) (|Select__T@[Int]Bool_| (|domain#$Memory_89598| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |DesignatedDealerbpl.8143:20|
 :skolemid |407|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_87469| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_89598| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))))) (and (and (and (forall ((addr1 Int) ) (!  (=> (|$IsValid'address'| addr1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100485| $1_DualAttestation_Credential_$memory) addr1) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_87591| $1_Roles_RoleId_$memory) addr1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_87591| $1_Roles_RoleId_$memory) addr1)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_87591| $1_Roles_RoleId_$memory) addr1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_87591| $1_Roles_RoleId_$memory) addr1)) 2)))))
 :qid |DesignatedDealerbpl.8151:20|
 :skolemid |408|
)) (forall ((addr@@15 Int) ) (!  (=> (|$IsValid'address'| addr@@15) (= (|Select__T@[Int]Bool_| (|domain#$Memory_106494| $1_DiemAccount_DiemAccount_$memory) addr@@15) (|Select__T@[Int]Bool_| (|domain#$Memory_87591| $1_Roles_RoleId_$memory) addr@@15)))
 :qid |DesignatedDealerbpl.8155:20|
 :skolemid |409|
))) (and (forall ((addr@@16 Int) ) (!  (=> (|$IsValid'address'| addr@@16) (= (|Select__T@[Int]Bool_| (|domain#$Memory_100091| $1_VASPDomain_VASPDomainManager_$memory) addr@@16)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_87591| $1_Roles_RoleId_$memory) addr@@16) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_87591| $1_Roles_RoleId_$memory) addr@@16)) 1))))
 :qid |DesignatedDealerbpl.8159:20|
 :skolemid |410|
)) (forall ((addr@@17 Int) ) (!  (=> (|$IsValid'address'| addr@@17) (= (|Select__T@[Int]Bool_| (|domain#$Memory_100208| $1_VASPDomain_VASPDomains_$memory) addr@@17)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_87591| $1_Roles_RoleId_$memory) addr@@17) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_87591| $1_Roles_RoleId_$memory) addr@@17)) 5))))
 :qid |DesignatedDealerbpl.8163:20|
 :skolemid |411|
)))) (and (and (forall ((addr@@18 Int) ) (!  (=> (|$IsValid'address'| addr@@18) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_103100| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@18) (|Select__T@[Int]Bool_| (|domain#$Memory_103160| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@18)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_87591| $1_Roles_RoleId_$memory) addr@@18) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_87591| $1_Roles_RoleId_$memory) addr@@18)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_87591| $1_Roles_RoleId_$memory) addr@@18) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_87591| $1_Roles_RoleId_$memory) addr@@18)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_87591| $1_Roles_RoleId_$memory) addr@@18) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_87591| $1_Roles_RoleId_$memory) addr@@18)) 2)))))
 :qid |DesignatedDealerbpl.8167:20|
 :skolemid |412|
)) (forall ((addr@@19 Int) ) (!  (=> (|$IsValid'address'| addr@@19) (= (|Select__T@[Int]Bool_| (|domain#$Memory_101340| $1_DesignatedDealer_Dealer_$memory) addr@@19)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_87591| $1_Roles_RoleId_$memory) addr@@19) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_87591| $1_Roles_RoleId_$memory) addr@@19)) 2))))
 :qid |DesignatedDealerbpl.8171:20|
 :skolemid |413|
))) (and (forall ((addr@@20 Int) ) (!  (=> (|$IsValid'address'| addr@@20) (= (|Select__T@[Int]Bool_| (|domain#$Memory_100485| $1_DualAttestation_Credential_$memory) addr@@20)  (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_87591| $1_Roles_RoleId_$memory) addr@@20) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_87591| $1_Roles_RoleId_$memory) addr@@20)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_87591| $1_Roles_RoleId_$memory) addr@@20) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_87591| $1_Roles_RoleId_$memory) addr@@20)) 5)))))
 :qid |DesignatedDealerbpl.8175:20|
 :skolemid |414|
)) (forall ((addr@@21 Int) ) (!  (=> (|$IsValid'address'| addr@@21) (= (|Select__T@[Int]Bool_| (|domain#$Memory_89007| $1_SlidingNonce_SlidingNonce_$memory) addr@@21)  (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_87591| $1_Roles_RoleId_$memory) addr@@21) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_87591| $1_Roles_RoleId_$memory) addr@@21)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_87591| $1_Roles_RoleId_$memory) addr@@21) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_87591| $1_Roles_RoleId_$memory) addr@@21)) 1)))))
 :qid |DesignatedDealerbpl.8179:20|
 :skolemid |415|
)))))) (=> (and (and (and (and (and (forall ((addr@@22 Int) ) (!  (=> (|$IsValid'address'| addr@@22) (= (|Select__T@[Int]Bool_| (|domain#$Memory_88421| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@22)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_87591| $1_Roles_RoleId_$memory) addr@@22) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_87591| $1_Roles_RoleId_$memory) addr@@22)) 3))))
 :qid |DesignatedDealerbpl.8183:20|
 :skolemid |416|
)) (forall ((addr@@23 Int) ) (!  (=> (|$IsValid'address'| addr@@23) (= (|Select__T@[Int]Bool_| (|domain#$Memory_87918| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@23)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_87591| $1_Roles_RoleId_$memory) addr@@23) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_87591| $1_Roles_RoleId_$memory) addr@@23)) 4))))
 :qid |DesignatedDealerbpl.8187:20|
 :skolemid |417|
))) (and (forall ((addr@@24 Int) ) (!  (=> (|$IsValid'address'| addr@@24) (= (|Select__T@[Int]Bool_| (|domain#$Memory_100305| $1_VASP_ParentVASP_$memory) addr@@24)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_87591| $1_Roles_RoleId_$memory) addr@@24) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_87591| $1_Roles_RoleId_$memory) addr@@24)) 5))))
 :qid |DesignatedDealerbpl.8191:20|
 :skolemid |418|
)) (forall ((addr@@25 Int) ) (!  (=> (|$IsValid'address'| addr@@25) (= (|Select__T@[Int]Bool_| (|domain#$Memory_100241| $1_VASP_ChildVASP_$memory) addr@@25)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_87591| $1_Roles_RoleId_$memory) addr@@25) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_87591| $1_Roles_RoleId_$memory) addr@@25)) 6))))
 :qid |DesignatedDealerbpl.8195:20|
 :skolemid |419|
)))) (and (and (|$IsValid'address'| (|$addr#$signer| _$t0)) ($1_Signer_is_txn_signer _$t0)) ($1_Signer_is_txn_signer_addr (|$addr#$signer| _$t0)))) (and (and (and (|$IsValid'u64'| _$t1) (|$IsValid'address'| _$t2)) (and (|$IsValid'u64'| _$t3) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_87591| $1_Roles_RoleId_$memory) $a_0)))
(|$IsValid'$1_Roles_RoleId'| $rsc))
 :qid |DesignatedDealerbpl.8211:20|
 :skolemid |420|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_87591| $1_Roles_RoleId_$memory) $a_0))
)))) (and (and (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_89598| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) $a_0@@0)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| $rsc@@0) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $rsc@@0)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $rsc@@0) 10000000000))))
 :qid |DesignatedDealerbpl.8215:20|
 :skolemid |421|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_89598| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) $a_0@@0))
)) (forall (($a_0@@1 Int) ) (! (let (($rsc@@1 (|Select__T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'_| (|contents#$Memory_90240| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) $a_0@@1)))
(|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| $rsc@@1))
 :qid |DesignatedDealerbpl.8219:20|
 :skolemid |422|
 :pattern ( (|Select__T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'_| (|contents#$Memory_90240| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) $a_0@@1))
))) (and (forall (($a_0@@2 Int) ) (! (let (($rsc@@2 (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_101340| $1_DesignatedDealer_Dealer_$memory) $a_0@@2)))
(|$IsValid'$1_DesignatedDealer_Dealer'| $rsc@@2))
 :qid |DesignatedDealerbpl.8223:20|
 :skolemid |423|
 :pattern ( (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_101340| $1_DesignatedDealer_Dealer_$memory) $a_0@@2))
)) (forall (($a_0@@3 Int) ) (! (let (($rsc@@3 (|Select__T@[Int]$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_| (|contents#$Memory_101696| |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory|) $a_0@@3)))
(|$IsValid'$1_DesignatedDealer_TierInfo'$1_XUS_XUS''| $rsc@@3))
 :qid |DesignatedDealerbpl.8227:20|
 :skolemid |424|
 :pattern ( (|Select__T@[Int]$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_| (|contents#$Memory_101696| |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory|) $a_0@@3))
)))))) (and (and (and (and (= $t8 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_89598| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= $t9 (|$addr#$signer| _$t0))) (and (= $t10 (|$mint_event_handle#$1_DesignatedDealer_Dealer| (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_101340| $1_DesignatedDealer_Dealer_$memory) _$t2))) (= $t11 ($1_DesignatedDealer_ReceivedMintEvent (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_89598| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) _$t2 _$t1)))) (and (and (= $t12 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_89598| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= $t13 (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t12))) (and (= $t14 ($1_Diem_MintEvent _$t1 (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t12))) (|Select__T@[Int]Bool_| $1_DesignatedDealer_Dealer_$modifies _$t2)))) (and (and (and (|Select__T@[Int]Bool_| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$modifies| 173345816) (|Select__T@[Int]Bool_| |$1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$modifies| _$t2)) (and (= _$t0 _$t0) (= _$t1 _$t1))) (and (and (= _$t2 _$t2) (= _$t3 _$t3)) (and (= $t15 (|$addr#$signer| _$t0)) (= $t16  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_87591| $1_Roles_RoleId_$memory) $t15)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_87591| $1_Roles_RoleId_$memory) $t15)) 1))) (not (= (|$addr#$signer| _$t0) 186537453))))))))) (and (=> (= (ControlFlow 0 148386) 150821) anon30_Then_correct) (=> (= (ControlFlow 0 148386) 148446) anon30_Else_correct)))))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@6 T@$1_Event_EventHandle) ) (! (let ((stream@@10 (|Select__T@[$1_Event_EventHandle]Multiset_53699_| (|streams#$EventStore| $es) handle@@6)))
 (and (= (|l#Multiset_53699| stream@@10) 0) (forall ((v@@51 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_53699| stream@@10) v@@51) 0)
 :qid |DesignatedDealerbpl.159:13|
 :skolemid |4|
))))
 :qid |DesignatedDealerbpl.2768:13|
 :skolemid |98|
))) (= (ControlFlow 0 147214) 148386)) anon0$1_correct)))
(let ((anon0_correct  (=> (= (|l#Vec_19166| (|p#$Mutation_117917| $t30)) 0) (=> (and (= (|l#Vec_19166| (|p#$Mutation_83026| $t31)) 0) (= (ControlFlow 0 147224) 147214)) inline$$InitEventStore$0$anon0_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 173435) 147224) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(reset)
(set-info :smt-lib-version 2.6)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_82348 0)) ((($Memory_82348 (|domain#$Memory_82348| |T@[Int]Bool|) (|contents#$Memory_82348| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_101340 0)) ((($Memory_101340 (|domain#$Memory_101340| |T@[Int]Bool|) (|contents#$Memory_101340| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_100305 0)) ((($Memory_100305 (|domain#$Memory_100305| |T@[Int]Bool|) (|contents#$Memory_100305| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_100241 0)) ((($Memory_100241 (|domain#$Memory_100241| |T@[Int]Bool|) (|contents#$Memory_100241| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_100091 0)) ((($Memory_100091 (|domain#$Memory_100091| |T@[Int]Bool|) (|contents#$Memory_100091| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'#0'| 0)) (((|$1_Diem_MintCapability'#0'| (|$dummy_field#$1_Diem_MintCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'#0'| 0)
(declare-datatypes ((T@$Memory_90368 0)) ((($Memory_90368 (|domain#$Memory_90368| |T@[Int]Bool|) (|contents#$Memory_90368| |T@[Int]$1_Diem_MintCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_90304 0)) ((($Memory_90304 (|domain#$Memory_90304| |T@[Int]Bool|) (|contents#$Memory_90304| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_90240 0)) ((($Memory_90240 (|domain#$Memory_90240| |T@[Int]Bool|) (|contents#$Memory_90240| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'#0'| 0)) (((|$1_Diem_Diem'#0'| (|$value#$1_Diem_Diem'#0'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'#0'| 0)) (((|$1_Diem_Preburn'#0'| (|$to_burn#$1_Diem_Preburn'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'#0'| 0)
(declare-datatypes ((T@$Memory_96388 0)) ((($Memory_96388 (|domain#$Memory_96388| |T@[Int]Bool|) (|contents#$Memory_96388| |T@[Int]$1_Diem_Preburn'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_103160 0)) ((($Memory_103160 (|domain#$Memory_103160| |T@[Int]Bool|) (|contents#$Memory_103160| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_96307 0)) ((($Memory_96307 (|domain#$Memory_96307| |T@[Int]Bool|) (|contents#$Memory_96307| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_103100 0)) ((($Memory_103100 (|domain#$Memory_103100| |T@[Int]Bool|) (|contents#$Memory_103100| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_96226 0)) ((($Memory_96226 (|domain#$Memory_96226| |T@[Int]Bool|) (|contents#$Memory_96226| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_89007 0)) ((($Memory_89007 (|domain#$Memory_89007| |T@[Int]Bool|) (|contents#$Memory_89007| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_WithdrawCapability| 0)
(declare-datatypes ((T@Vec_53863 0)) (((Vec_53863 (|v#Vec_53863| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#Vec_53863| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| T@Vec_53863) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_KeyRotationCapability| 0)
(declare-datatypes ((T@Vec_53824 0)) (((Vec_53824 (|v#Vec_53824| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#Vec_53824| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| T@Vec_53824) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_19166 0)) (((Vec_19166 (|v#Vec_19166| |T@[Int]Int|) (|l#Vec_19166| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| T@Vec_19166) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_106494 0)) ((($Memory_106494 (|domain#$Memory_106494| |T@[Int]Bool|) (|contents#$Memory_106494| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((|T@$1_DesignatedDealer_TierInfo'#0'| 0)) (((|$1_DesignatedDealer_TierInfo'#0'| (|$window_start#$1_DesignatedDealer_TierInfo'#0'| Int) (|$window_inflow#$1_DesignatedDealer_TierInfo'#0'| Int) (|$tiers#$1_DesignatedDealer_TierInfo'#0'| T@Vec_19166) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_TierInfo'#0'| 0)
(declare-datatypes ((T@$Memory_102142 0)) ((($Memory_102142 (|domain#$Memory_102142| |T@[Int]Bool|) (|contents#$Memory_102142| |T@[Int]$1_DesignatedDealer_TierInfo'#0'|) ) ) ))
(declare-datatypes ((|T@$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| 0)) (((|$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| (|$window_start#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| Int) (|$window_inflow#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| Int) (|$tiers#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| T@Vec_19166) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_101919 0)) ((($Memory_101919 (|domain#$Memory_101919| |T@[Int]Bool|) (|contents#$Memory_101919| |T@[Int]$1_DesignatedDealer_TierInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| 0)) (((|$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| (|$window_start#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| Int) (|$window_inflow#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| Int) (|$tiers#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| T@Vec_19166) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_101696 0)) ((($Memory_101696 (|domain#$Memory_101696| |T@[Int]Bool|) (|contents#$Memory_101696| |T@[Int]$1_DesignatedDealer_TierInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| T@Vec_19166) (|$base_url#$1_DualAttestation_Credential| T@Vec_19166) (|$compliance_public_key#$1_DualAttestation_Credential| T@Vec_19166) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_100485 0)) ((($Memory_100485 (|domain#$Memory_100485| |T@[Int]Bool|) (|contents#$Memory_100485| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| T@Vec_19166) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomain| 0)
(declare-datatypes ((T@Vec_54333 0)) (((Vec_54333 (|v#Vec_54333| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#Vec_54333| Int) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomains 0)) ((($1_VASPDomain_VASPDomains (|$domains#$1_VASPDomain_VASPDomains| T@Vec_54333) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomains| 0)
(declare-datatypes ((T@$Memory_100208 0)) ((($Memory_100208 (|domain#$Memory_100208| |T@[Int]Bool|) (|contents#$Memory_100208| |T@[Int]$1_VASPDomain_VASPDomains|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'#0'| 0)) (((|$1_Diem_PreburnWithMetadata'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| |T@$1_Diem_Preburn'#0'|) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| T@Vec_19166) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'#0'| 0)
(declare-datatypes ((T@Vec_54231 0)) (((Vec_54231 (|v#Vec_54231| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#Vec_54231| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'#0'| 0)) (((|$1_Diem_PreburnQueue'#0'| (|$preburns#$1_Diem_PreburnQueue'#0'| T@Vec_54231) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'#0'| 0)
(declare-datatypes ((T@$Memory_96872 0)) ((($Memory_96872 (|domain#$Memory_96872| |T@[Int]Bool|) (|contents#$Memory_96872| |T@[Int]$1_Diem_PreburnQueue'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| T@Vec_19166) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)
(declare-datatypes ((T@Vec_54192 0)) (((Vec_54192 (|v#Vec_54192| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#Vec_54192| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| T@Vec_54192) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_96755 0)) ((($Memory_96755 (|domain#$Memory_96755| |T@[Int]Bool|) (|contents#$Memory_96755| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| T@Vec_19166) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)
(declare-datatypes ((T@Vec_54153 0)) (((Vec_54153 (|v#Vec_54153| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#Vec_54153| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| T@Vec_54153) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_96638 0)) ((($Memory_96638 (|domain#$Memory_96638| |T@[Int]Bool|) (|contents#$Memory_96638| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'#0'| 0)) (((|$1_Diem_CurrencyInfo'#0'| (|$total_value#$1_Diem_CurrencyInfo'#0'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| Int) (|$currency_code#$1_Diem_CurrencyInfo'#0'| T@Vec_19166) (|$can_mint#$1_Diem_CurrencyInfo'#0'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'#0'| 0)
(declare-datatypes ((T@$Memory_89836 0)) ((($Memory_89836 (|domain#$Memory_89836| |T@[Int]Bool|) (|contents#$Memory_89836| |T@[Int]$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@Vec_19166) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_89717 0)) ((($Memory_89717 (|domain#$Memory_89717| |T@[Int]Bool|) (|contents#$Memory_89717| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@Vec_19166) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_89598 0)) ((($Memory_89598 (|domain#$Memory_89598| |T@[Int]Bool|) (|contents#$Memory_89598| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| T@Vec_19166) (|$validator_network_addresses#$1_ValidatorConfig_Config| T@Vec_19166) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| T@Vec_19166) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_Config| 0)
(declare-datatypes ((T@Vec_53785 0)) (((Vec_53785 (|v#Vec_53785| |T@[Int]$1_ValidatorConfig_Config|) (|l#Vec_53785| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| T@Vec_53785) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_ValidatorInfo| 0)
(declare-datatypes ((T@Vec_53941 0)) (((Vec_53941 (|v#Vec_53941| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#Vec_53941| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| T@Vec_53941) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_89040 0)) ((($Memory_89040 (|domain#$Memory_89040| |T@[Int]Bool|) (|contents#$Memory_89040| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| T@Vec_19166) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| T@Vec_19166) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_88421 0)) ((($Memory_88421 (|domain#$Memory_88421| |T@[Int]Bool|) (|contents#$Memory_88421| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| T@Vec_19166) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_87918 0)) ((($Memory_87918 (|domain#$Memory_87918| |T@[Int]Bool|) (|contents#$Memory_87918| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_87591 0)) ((($Memory_87591 (|domain#$Memory_87591| |T@[Int]Bool|) (|contents#$Memory_87591| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_87469 0)) ((($Memory_87469 (|domain#$Memory_87469| |T@[Int]Bool|) (|contents#$Memory_87469| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainEvent 0)) ((($1_VASPDomain_VASPDomainEvent (|$removed#$1_VASPDomain_VASPDomainEvent| Bool) (|$domain#$1_VASPDomain_VASPDomainEvent| T@$1_VASPDomain_VASPDomain) (|$address#$1_VASPDomain_VASPDomainEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_ComplianceKeyRotationEvent 0)) ((($1_DualAttestation_ComplianceKeyRotationEvent (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| T@Vec_19166) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_BaseUrlRotationEvent 0)) ((($1_DualAttestation_BaseUrlRotationEvent (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| T@Vec_19166) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_ToXDXExchangeRateUpdateEvent 0)) ((($1_Diem_ToXDXExchangeRateUpdateEvent (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| T@Vec_19166) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_PreburnEvent 0)) ((($1_Diem_PreburnEvent (|$amount#$1_Diem_PreburnEvent| Int) (|$currency_code#$1_Diem_PreburnEvent| T@Vec_19166) (|$preburn_address#$1_Diem_PreburnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_MintEvent 0)) ((($1_Diem_MintEvent (|$amount#$1_Diem_MintEvent| Int) (|$currency_code#$1_Diem_MintEvent| T@Vec_19166) ) ) ))
(declare-datatypes ((T@$1_Diem_CancelBurnEvent 0)) ((($1_Diem_CancelBurnEvent (|$amount#$1_Diem_CancelBurnEvent| Int) (|$currency_code#$1_Diem_CancelBurnEvent| T@Vec_19166) (|$preburn_address#$1_Diem_CancelBurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_BurnEvent 0)) ((($1_Diem_BurnEvent (|$amount#$1_Diem_BurnEvent| Int) (|$currency_code#$1_Diem_BurnEvent| T@Vec_19166) (|$preburn_address#$1_Diem_BurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_SentPaymentEvent 0)) ((($1_DiemAccount_SentPaymentEvent (|$amount#$1_DiemAccount_SentPaymentEvent| Int) (|$currency_code#$1_DiemAccount_SentPaymentEvent| T@Vec_19166) (|$payee#$1_DiemAccount_SentPaymentEvent| Int) (|$metadata#$1_DiemAccount_SentPaymentEvent| T@Vec_19166) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_ReceivedPaymentEvent 0)) ((($1_DiemAccount_ReceivedPaymentEvent (|$amount#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_19166) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_19166) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_ReceivedMintEvent 0)) ((($1_DesignatedDealer_ReceivedMintEvent (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| T@Vec_19166) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| Int) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| (|e#$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| T@$1_DesignatedDealer_ReceivedMintEvent) ) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| T@$1_DiemAccount_ReceivedPaymentEvent) ) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_SentPaymentEvent'| T@$1_DiemAccount_SentPaymentEvent) ) (|$ToEventRep'$1_Diem_BurnEvent'| (|e#$ToEventRep'$1_Diem_BurnEvent'| T@$1_Diem_BurnEvent) ) (|$ToEventRep'$1_Diem_CancelBurnEvent'| (|e#$ToEventRep'$1_Diem_CancelBurnEvent'| T@$1_Diem_CancelBurnEvent) ) (|$ToEventRep'$1_Diem_MintEvent'| (|e#$ToEventRep'$1_Diem_MintEvent'| T@$1_Diem_MintEvent) ) (|$ToEventRep'$1_Diem_PreburnEvent'| (|e#$ToEventRep'$1_Diem_PreburnEvent'| T@$1_Diem_PreburnEvent) ) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| (|e#$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| T@$1_DualAttestation_BaseUrlRotationEvent) ) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| (|e#$ToEventRep'$1_VASPDomain_VASPDomainEvent'| T@$1_VASPDomain_VASPDomainEvent) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_53699 0)) (((Multiset_53699 (|v#Multiset_53699| |T@[$EventRep]Int|) (|l#Multiset_53699| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_53699| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_53699|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_117917 0)) ((($Mutation_117917 (|l#$Mutation_117917| T@$Location) (|p#$Mutation_117917| T@Vec_19166) (|v#$Mutation_117917| T@$1_DesignatedDealer_Dealer) ) ) ))
(declare-datatypes ((T@$Mutation_83026 0)) ((($Mutation_83026 (|l#$Mutation_83026| T@$Location) (|p#$Mutation_83026| T@Vec_19166) (|v#$Mutation_83026| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_12729 0)) ((($Mutation_12729 (|l#$Mutation_12729| T@$Location) (|p#$Mutation_12729| T@Vec_19166) (|v#$Mutation_12729| Int) ) ) ))
(declare-datatypes ((T@$Mutation_77507 0)) ((($Mutation_77507 (|l#$Mutation_77507| T@$Location) (|p#$Mutation_77507| T@Vec_19166) (|v#$Mutation_77507| T@Vec_19166) ) ) ))
(declare-datatypes ((T@$Mutation_75930 0)) ((($Mutation_75930 (|l#$Mutation_75930| T@$Location) (|p#$Mutation_75930| T@Vec_19166) (|v#$Mutation_75930| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_74943 0)) ((($Mutation_74943 (|l#$Mutation_74943| T@$Location) (|p#$Mutation_74943| T@Vec_19166) (|v#$Mutation_74943| T@Vec_53785) ) ) ))
(declare-datatypes ((T@$Mutation_73288 0)) ((($Mutation_73288 (|l#$Mutation_73288| T@$Location) (|p#$Mutation_73288| T@Vec_19166) (|v#$Mutation_73288| T@$1_VASPDomain_VASPDomain) ) ) ))
(declare-datatypes ((T@$Mutation_72301 0)) ((($Mutation_72301 (|l#$Mutation_72301| T@$Location) (|p#$Mutation_72301| T@Vec_19166) (|v#$Mutation_72301| T@Vec_54333) ) ) ))
(declare-datatypes ((T@$Mutation_70623 0)) ((($Mutation_70623 (|l#$Mutation_70623| T@$Location) (|p#$Mutation_70623| T@Vec_19166) (|v#$Mutation_70623| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_69636 0)) ((($Mutation_69636 (|l#$Mutation_69636| T@$Location) (|p#$Mutation_69636| T@Vec_19166) (|v#$Mutation_69636| T@Vec_54153) ) ) ))
(declare-datatypes ((T@$Mutation_67927 0)) ((($Mutation_67927 (|l#$Mutation_67927| T@$Location) (|p#$Mutation_67927| T@Vec_19166) (|v#$Mutation_67927| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_66940 0)) ((($Mutation_66940 (|l#$Mutation_66940| T@$Location) (|p#$Mutation_66940| T@Vec_19166) (|v#$Mutation_66940| T@Vec_54192) ) ) ))
(declare-datatypes ((T@$Mutation_65231 0)) ((($Mutation_65231 (|l#$Mutation_65231| T@$Location) (|p#$Mutation_65231| T@Vec_19166) (|v#$Mutation_65231| |T@$1_Diem_PreburnWithMetadata'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_64244 0)) ((($Mutation_64244 (|l#$Mutation_64244| T@$Location) (|p#$Mutation_64244| T@Vec_19166) (|v#$Mutation_64244| T@Vec_54231) ) ) ))
(declare-datatypes ((T@$Mutation_62535 0)) ((($Mutation_62535 (|l#$Mutation_62535| T@$Location) (|p#$Mutation_62535| T@Vec_19166) (|v#$Mutation_62535| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_61548 0)) ((($Mutation_61548 (|l#$Mutation_61548| T@$Location) (|p#$Mutation_61548| T@Vec_19166) (|v#$Mutation_61548| T@Vec_53941) ) ) ))
(declare-datatypes ((T@$Mutation_59748 0)) ((($Mutation_59748 (|l#$Mutation_59748| T@$Location) (|p#$Mutation_59748| T@Vec_19166) (|v#$Mutation_59748| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_58761 0)) ((($Mutation_58761 (|l#$Mutation_58761| T@$Location) (|p#$Mutation_58761| T@Vec_19166) (|v#$Mutation_58761| T@Vec_53863) ) ) ))
(declare-datatypes ((T@$Mutation_57048 0)) ((($Mutation_57048 (|l#$Mutation_57048| T@$Location) (|p#$Mutation_57048| T@Vec_19166) (|v#$Mutation_57048| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_56061 0)) ((($Mutation_56061 (|l#$Mutation_56061| T@$Location) (|p#$Mutation_56061| T@Vec_19166) (|v#$Mutation_56061| T@Vec_53824) ) ) ))
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
(declare-fun |$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_53824 T@Vec_53824) Bool)
(declare-fun InRangeVec_46858 (T@Vec_53824 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|T@[Int]$1_DiemAccount_KeyRotationCapability| Int) T@$1_DiemAccount_KeyRotationCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_53824) Bool)
(declare-fun |$IsValid'$1_DiemAccount_KeyRotationCapability'| (T@$1_DiemAccount_KeyRotationCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| (T@Vec_53824 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_53863 T@Vec_53863) Bool)
(declare-fun InRangeVec_47059 (T@Vec_53863 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|T@[Int]$1_DiemAccount_WithdrawCapability| Int) T@$1_DiemAccount_WithdrawCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_53863) Bool)
(declare-fun |$IsValid'$1_DiemAccount_WithdrawCapability'| (T@$1_DiemAccount_WithdrawCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_WithdrawCapability'| (T@Vec_53863 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_53941 T@Vec_53941) Bool)
(declare-fun InRangeVec_47260 (T@Vec_53941 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|T@[Int]$1_DiemSystem_ValidatorInfo| Int) T@$1_DiemSystem_ValidatorInfo)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_19166 T@Vec_19166) Bool)
(declare-fun |$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_53941) Bool)
(declare-fun |$IsValid'$1_DiemSystem_ValidatorInfo'| (T@$1_DiemSystem_ValidatorInfo) Bool)
(declare-fun |$IndexOfVec'$1_DiemSystem_ValidatorInfo'| (T@Vec_53941 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'#0'''| (T@Vec_54231 T@Vec_54231) Bool)
(declare-fun InRangeVec_47461 (T@Vec_54231 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|T@[Int]$1_Diem_PreburnWithMetadata'#0'| Int) |T@$1_Diem_PreburnWithMetadata'#0'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| (T@Vec_54231) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'#0''| (|T@$1_Diem_PreburnWithMetadata'#0'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| (T@Vec_54231 |T@$1_Diem_PreburnWithMetadata'#0'|) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (T@Vec_54192 T@Vec_54192) Bool)
(declare-fun InRangeVec_47662 (T@Vec_54192 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| Int) |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (T@Vec_54192) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (T@Vec_54192 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (T@Vec_54153 T@Vec_54153) Bool)
(declare-fun InRangeVec_47863 (T@Vec_54153 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| Int) |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (T@Vec_54153) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (T@Vec_54153 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Int)
(declare-fun |$IsEqual'vec'$1_VASPDomain_VASPDomain''| (T@Vec_54333 T@Vec_54333) Bool)
(declare-fun InRangeVec_48064 (T@Vec_54333 Int) Bool)
(declare-fun |Select__T@[Int]$1_VASPDomain_VASPDomain_| (|T@[Int]$1_VASPDomain_VASPDomain| Int) T@$1_VASPDomain_VASPDomain)
(declare-fun |$IsValid'vec'$1_VASPDomain_VASPDomain''| (T@Vec_54333) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomain'| (T@$1_VASPDomain_VASPDomain) Bool)
(declare-fun |$IndexOfVec'$1_VASPDomain_VASPDomain'| (T@Vec_54333 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun |$IsEqual'vec'$1_ValidatorConfig_Config''| (T@Vec_53785 T@Vec_53785) Bool)
(declare-fun InRangeVec_48265 (T@Vec_53785 Int) Bool)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_Config_| (|T@[Int]$1_ValidatorConfig_Config| Int) T@$1_ValidatorConfig_Config)
(declare-fun |$IsValid'vec'$1_ValidatorConfig_Config''| (T@Vec_53785) Bool)
(declare-fun |$IsValid'$1_ValidatorConfig_Config'| (T@$1_ValidatorConfig_Config) Bool)
(declare-fun |$IndexOfVec'$1_ValidatorConfig_Config'| (T@Vec_53785 T@$1_ValidatorConfig_Config) Int)
(declare-fun |$IsEqual'vec'address''| (T@Vec_19166 T@Vec_19166) Bool)
(declare-fun InRangeVec_12105 (T@Vec_19166 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'address''| (T@Vec_19166) Bool)
(declare-fun |$IndexOfVec'address'| (T@Vec_19166 Int) Int)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_19166 T@Vec_19166) Bool)
(declare-fun |$IsValid'vec'u64''| (T@Vec_19166) Bool)
(declare-fun |$IndexOfVec'u64'| (T@Vec_19166 Int) Int)
(declare-fun |$IsValid'vec'u8''| (T@Vec_19166) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_19166 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_19166) T@Vec_19166)
(declare-fun $1_Hash_sha3 (T@Vec_19166) T@Vec_19166)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_19166) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_19166 T@Vec_19166 T@Vec_19166) Bool)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_53699_| (|T@[$1_Event_EventHandle]Multiset_53699| T@$1_Event_EventHandle) T@Multiset_53699)
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
(declare-fun IndexOfVec_19166 (T@Vec_19166 Int) Int)
(declare-fun IndexOfVec_53785 (T@Vec_53785 T@$1_ValidatorConfig_Config) Int)
(declare-fun IndexOfVec_53824 (T@Vec_53824 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun IndexOfVec_53863 (T@Vec_53863 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun IndexOfVec_53941 (T@Vec_53941 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun IndexOfVec_54153 (T@Vec_54153 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Int)
(declare-fun IndexOfVec_54192 (T@Vec_54192 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Int)
(declare-fun IndexOfVec_54231 (T@Vec_54231 |T@$1_Diem_PreburnWithMetadata'#0'|) Int)
(declare-fun IndexOfVec_54333 (T@Vec_54333 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_53699| |T@[$1_Event_EventHandle]Multiset_53699|) |T@[$1_Event_EventHandle]Multiset_53699|)
(declare-fun |lambda#30| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(declare-fun |lambda#3| (Int Int Int |T@[Int]$1_DiemAccount_KeyRotationCapability| |T@[Int]$1_DiemAccount_KeyRotationCapability| Int T@$1_DiemAccount_KeyRotationCapability) |T@[Int]$1_DiemAccount_KeyRotationCapability|)
(declare-fun |lambda#4| (Int Int |T@[Int]$1_DiemAccount_KeyRotationCapability| Int Int T@$1_DiemAccount_KeyRotationCapability) |T@[Int]$1_DiemAccount_KeyRotationCapability|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]$1_DiemAccount_KeyRotationCapability| |T@[Int]$1_DiemAccount_KeyRotationCapability| Int T@$1_DiemAccount_KeyRotationCapability) |T@[Int]$1_DiemAccount_KeyRotationCapability|)
(declare-fun |lambda#6| (Int Int Int |T@[Int]$1_DiemAccount_WithdrawCapability| |T@[Int]$1_DiemAccount_WithdrawCapability| Int T@$1_DiemAccount_WithdrawCapability) |T@[Int]$1_DiemAccount_WithdrawCapability|)
(declare-fun |lambda#7| (Int Int |T@[Int]$1_DiemAccount_WithdrawCapability| Int Int T@$1_DiemAccount_WithdrawCapability) |T@[Int]$1_DiemAccount_WithdrawCapability|)
(declare-fun |lambda#8| (Int Int Int |T@[Int]$1_DiemAccount_WithdrawCapability| |T@[Int]$1_DiemAccount_WithdrawCapability| Int T@$1_DiemAccount_WithdrawCapability) |T@[Int]$1_DiemAccount_WithdrawCapability|)
(declare-fun |lambda#9| (Int Int Int |T@[Int]$1_DiemSystem_ValidatorInfo| |T@[Int]$1_DiemSystem_ValidatorInfo| Int T@$1_DiemSystem_ValidatorInfo) |T@[Int]$1_DiemSystem_ValidatorInfo|)
(declare-fun |lambda#10| (Int Int |T@[Int]$1_DiemSystem_ValidatorInfo| Int Int T@$1_DiemSystem_ValidatorInfo) |T@[Int]$1_DiemSystem_ValidatorInfo|)
(declare-fun |lambda#11| (Int Int Int |T@[Int]$1_DiemSystem_ValidatorInfo| |T@[Int]$1_DiemSystem_ValidatorInfo| Int T@$1_DiemSystem_ValidatorInfo) |T@[Int]$1_DiemSystem_ValidatorInfo|)
(declare-fun |lambda#12| (Int Int Int |T@[Int]$1_Diem_PreburnWithMetadata'#0'| |T@[Int]$1_Diem_PreburnWithMetadata'#0'| Int |T@$1_Diem_PreburnWithMetadata'#0'|) |T@[Int]$1_Diem_PreburnWithMetadata'#0'|)
(declare-fun |lambda#13| (Int Int |T@[Int]$1_Diem_PreburnWithMetadata'#0'| Int Int |T@$1_Diem_PreburnWithMetadata'#0'|) |T@[Int]$1_Diem_PreburnWithMetadata'#0'|)
(declare-fun |lambda#14| (Int Int Int |T@[Int]$1_Diem_PreburnWithMetadata'#0'| |T@[Int]$1_Diem_PreburnWithMetadata'#0'| Int |T@$1_Diem_PreburnWithMetadata'#0'|) |T@[Int]$1_Diem_PreburnWithMetadata'#0'|)
(declare-fun |lambda#15| (Int Int Int |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| Int |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)
(declare-fun |lambda#16| (Int Int |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| Int Int |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)
(declare-fun |lambda#17| (Int Int Int |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| Int |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)
(declare-fun |lambda#18| (Int Int Int |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| Int |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)
(declare-fun |lambda#19| (Int Int |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| Int Int |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)
(declare-fun |lambda#20| (Int Int Int |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| Int |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)
(declare-fun |lambda#21| (Int Int Int |T@[Int]$1_VASPDomain_VASPDomain| |T@[Int]$1_VASPDomain_VASPDomain| Int T@$1_VASPDomain_VASPDomain) |T@[Int]$1_VASPDomain_VASPDomain|)
(declare-fun |lambda#22| (Int Int |T@[Int]$1_VASPDomain_VASPDomain| Int Int T@$1_VASPDomain_VASPDomain) |T@[Int]$1_VASPDomain_VASPDomain|)
(declare-fun |lambda#23| (Int Int Int |T@[Int]$1_VASPDomain_VASPDomain| |T@[Int]$1_VASPDomain_VASPDomain| Int T@$1_VASPDomain_VASPDomain) |T@[Int]$1_VASPDomain_VASPDomain|)
(declare-fun |lambda#24| (Int Int Int |T@[Int]$1_ValidatorConfig_Config| |T@[Int]$1_ValidatorConfig_Config| Int T@$1_ValidatorConfig_Config) |T@[Int]$1_ValidatorConfig_Config|)
(declare-fun |lambda#25| (Int Int |T@[Int]$1_ValidatorConfig_Config| Int Int T@$1_ValidatorConfig_Config) |T@[Int]$1_ValidatorConfig_Config|)
(declare-fun |lambda#26| (Int Int Int |T@[Int]$1_ValidatorConfig_Config| |T@[Int]$1_ValidatorConfig_Config| Int T@$1_ValidatorConfig_Config) |T@[Int]$1_ValidatorConfig_Config|)
(declare-fun |lambda#27| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#28| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#29| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |DesignatedDealerbpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |DesignatedDealerbpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |DesignatedDealerbpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |DesignatedDealerbpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |DesignatedDealerbpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |DesignatedDealerbpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |DesignatedDealerbpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |DesignatedDealerbpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_53824) (v2 T@Vec_53824) ) (! (= (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1 v2)  (and (= (|l#Vec_53824| v1) (|l#Vec_53824| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_46858 v1 i@@0) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_53824| v1) i@@0) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_53824| v2) i@@0)))
 :qid |DesignatedDealerbpl.615:13|
 :skolemid |17|
))))
 :qid |DesignatedDealerbpl.613:62|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_53824) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_53824| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_46858 v@@4 i@@1) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_53824| v@@4) i@@1)))
 :qid |DesignatedDealerbpl.621:13|
 :skolemid |19|
))))
 :qid |DesignatedDealerbpl.619:62|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_53824) (e T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@2 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_46858 v@@5 i@@3)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_53824| v@@5) i@@3) e))
 :qid |DesignatedDealerbpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_46858 v@@5 i@@2)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_53824| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_53824| v@@5) j) e)))
 :qid |DesignatedDealerbpl.634:17|
 :skolemid |22|
)))))
 :qid |DesignatedDealerbpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_53863) (v2@@0 T@Vec_53863) ) (! (= (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@0 v2@@0)  (and (= (|l#Vec_53863| v1@@0) (|l#Vec_53863| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_47059 v1@@0 i@@4) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_53863| v1@@0) i@@4) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_53863| v2@@0) i@@4)))
 :qid |DesignatedDealerbpl.796:13|
 :skolemid |24|
))))
 :qid |DesignatedDealerbpl.794:59|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_53863) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_53863| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_47059 v@@6 i@@5) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_53863| v@@6) i@@5)))
 :qid |DesignatedDealerbpl.802:13|
 :skolemid |26|
))))
 :qid |DesignatedDealerbpl.800:59|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_53863) (e@@0 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@6 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_47059 v@@7 i@@7)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_53863| v@@7) i@@7) e@@0))
 :qid |DesignatedDealerbpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_47059 v@@7 i@@6)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_53863| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_53863| v@@7) j@@0) e@@0)))
 :qid |DesignatedDealerbpl.815:17|
 :skolemid |29|
)))))
 :qid |DesignatedDealerbpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_53941) (v2@@1 T@Vec_53941) ) (! (= (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@1 v2@@1)  (and (= (|l#Vec_53941| v1@@1) (|l#Vec_53941| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_47260 v1@@1 i@@8) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_53941| v1@@1) i@@8)) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_53941| v2@@1) i@@8))) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_53941| v1@@1) i@@8)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_53941| v2@@1) i@@8)))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_53941| v1@@1) i@@8))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_53941| v2@@1) i@@8)))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_53941| v1@@1) i@@8))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_53941| v2@@1) i@@8))))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_53941| v1@@1) i@@8))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_53941| v2@@1) i@@8)))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_53941| v1@@1) i@@8)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_53941| v2@@1) i@@8)))))
 :qid |DesignatedDealerbpl.977:13|
 :skolemid |31|
))))
 :qid |DesignatedDealerbpl.975:53|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_53941) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_53941| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_47260 v@@8 i@@9) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_53941| v@@8) i@@9)))
 :qid |DesignatedDealerbpl.983:13|
 :skolemid |33|
))))
 :qid |DesignatedDealerbpl.981:53|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_53941) (e@@1 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_47260 v@@9 i@@11)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_53941| v@@9) i@@11)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@1)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_53941| v@@9) i@@11)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@1))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_53941| v@@9) i@@11))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@1))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_53941| v@@9) i@@11))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@1)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_53941| v@@9) i@@11))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@1))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_53941| v@@9) i@@11)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@1))))
 :qid |DesignatedDealerbpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_47260 v@@9 i@@10)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_53941| v@@9) i@@10)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@1)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_53941| v@@9) i@@10)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@1))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_53941| v@@9) i@@10))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@1))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_53941| v@@9) i@@10))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@1)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_53941| v@@9) i@@10))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@1))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_53941| v@@9) i@@10)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@1)))) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_53941| v@@9) j@@1)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@1)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_53941| v@@9) j@@1)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@1))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_53941| v@@9) j@@1))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@1))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_53941| v@@9) j@@1))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@1)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_53941| v@@9) j@@1))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@1))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_53941| v@@9) j@@1)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@1)))))
 :qid |DesignatedDealerbpl.996:17|
 :skolemid |36|
)))))
 :qid |DesignatedDealerbpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_54231) (v2@@2 T@Vec_54231) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'#0'''| v1@@2 v2@@2)  (and (= (|l#Vec_54231| v1@@2) (|l#Vec_54231| v2@@2)) (forall ((i@@12 Int) ) (!  (=> (InRangeVec_47461 v1@@2 i@@12) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_54231| v1@@2) i@@12)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_54231| v2@@2) i@@12))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_54231| v1@@2) i@@12)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_54231| v2@@2) i@@12)))))
 :qid |DesignatedDealerbpl.1158:13|
 :skolemid |38|
))))
 :qid |DesignatedDealerbpl.1156:57|
 :skolemid |39|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'#0'''| v1@@2 v2@@2))
)))
(assert (forall ((v@@10 T@Vec_54231) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@10)  (and (|$IsValid'u64'| (|l#Vec_54231| v@@10)) (forall ((i@@13 Int) ) (!  (=> (InRangeVec_47461 v@@10 i@@13) (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_54231| v@@10) i@@13)))
 :qid |DesignatedDealerbpl.1164:13|
 :skolemid |40|
))))
 :qid |DesignatedDealerbpl.1162:57|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@10))
)))
(assert (forall ((v@@11 T@Vec_54231) (e@@2 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (let ((i@@14 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@11 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (and (|$IsValid'u64'| i@@15) (InRangeVec_47461 v@@11 i@@15)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_54231| v@@11) i@@15)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| e@@2)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_54231| v@@11) i@@15)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| e@@2))))
 :qid |DesignatedDealerbpl.1169:13|
 :skolemid |42|
))) (= i@@14 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@14) (InRangeVec_47461 v@@11 i@@14)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_54231| v@@11) i@@14)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| e@@2)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_54231| v@@11) i@@14)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| e@@2)))) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@14)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_54231| v@@11) j@@2)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| e@@2)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_54231| v@@11) j@@2)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| e@@2)))))
 :qid |DesignatedDealerbpl.1177:17|
 :skolemid |43|
)))))
 :qid |DesignatedDealerbpl.1173:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@11 e@@2))
)))
(assert (forall ((v1@@3 T@Vec_54192) (v2@@3 T@Vec_54192) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v1@@3 v2@@3)  (and (= (|l#Vec_54192| v1@@3) (|l#Vec_54192| v2@@3)) (forall ((i@@16 Int) ) (!  (=> (InRangeVec_47662 v1@@3 i@@16) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_54192| v1@@3) i@@16)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_54192| v2@@3) i@@16))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_54192| v1@@3) i@@16)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_54192| v2@@3) i@@16)))))
 :qid |DesignatedDealerbpl.1339:13|
 :skolemid |45|
))))
 :qid |DesignatedDealerbpl.1337:65|
 :skolemid |46|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v1@@3 v2@@3))
)))
(assert (forall ((v@@12 T@Vec_54192) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12)  (and (|$IsValid'u64'| (|l#Vec_54192| v@@12)) (forall ((i@@17 Int) ) (!  (=> (InRangeVec_47662 v@@12 i@@17) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_54192| v@@12) i@@17)))
 :qid |DesignatedDealerbpl.1345:13|
 :skolemid |47|
))))
 :qid |DesignatedDealerbpl.1343:65|
 :skolemid |48|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12))
)))
(assert (forall ((v@@13 T@Vec_54192) (e@@3 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@18 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3)))
(ite  (not (exists ((i@@19 Int) ) (!  (and (and (|$IsValid'u64'| i@@19) (InRangeVec_47662 v@@13 i@@19)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_54192| v@@13) i@@19)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_54192| v@@13) i@@19)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@3))))
 :qid |DesignatedDealerbpl.1350:13|
 :skolemid |49|
))) (= i@@18 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@18) (InRangeVec_47662 v@@13 i@@18)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_54192| v@@13) i@@18)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_54192| v@@13) i@@18)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@3)))) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@18)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_54192| v@@13) j@@3)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_54192| v@@13) j@@3)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@3)))))
 :qid |DesignatedDealerbpl.1358:17|
 :skolemid |50|
)))))
 :qid |DesignatedDealerbpl.1354:15|
 :skolemid |51|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3))
)))
(assert (forall ((v1@@4 T@Vec_54153) (v2@@4 T@Vec_54153) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v1@@4 v2@@4)  (and (= (|l#Vec_54153| v1@@4) (|l#Vec_54153| v2@@4)) (forall ((i@@20 Int) ) (!  (=> (InRangeVec_47863 v1@@4 i@@20) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_54153| v1@@4) i@@20)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_54153| v2@@4) i@@20))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_54153| v1@@4) i@@20)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_54153| v2@@4) i@@20)))))
 :qid |DesignatedDealerbpl.1520:13|
 :skolemid |52|
))))
 :qid |DesignatedDealerbpl.1518:65|
 :skolemid |53|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v1@@4 v2@@4))
)))
(assert (forall ((v@@14 T@Vec_54153) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14)  (and (|$IsValid'u64'| (|l#Vec_54153| v@@14)) (forall ((i@@21 Int) ) (!  (=> (InRangeVec_47863 v@@14 i@@21) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_54153| v@@14) i@@21)))
 :qid |DesignatedDealerbpl.1526:13|
 :skolemid |54|
))))
 :qid |DesignatedDealerbpl.1524:65|
 :skolemid |55|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14))
)))
(assert (forall ((v@@15 T@Vec_54153) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@22 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (InRangeVec_47863 v@@15 i@@23)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_54153| v@@15) i@@23)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_54153| v@@15) i@@23)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@4))))
 :qid |DesignatedDealerbpl.1531:13|
 :skolemid |56|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (InRangeVec_47863 v@@15 i@@22)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_54153| v@@15) i@@22)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_54153| v@@15) i@@22)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@4)))) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@22)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_54153| v@@15) j@@4)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_54153| v@@15) j@@4)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@4)))))
 :qid |DesignatedDealerbpl.1539:17|
 :skolemid |57|
)))))
 :qid |DesignatedDealerbpl.1535:15|
 :skolemid |58|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4))
)))
(assert (forall ((v1@@5 T@Vec_54333) (v2@@5 T@Vec_54333) ) (! (= (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@5 v2@@5)  (and (= (|l#Vec_54333| v1@@5) (|l#Vec_54333| v2@@5)) (forall ((i@@24 Int) ) (!  (=> (InRangeVec_48064 v1@@5 i@@24) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_54333| v1@@5) i@@24)) (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_54333| v2@@5) i@@24))))
 :qid |DesignatedDealerbpl.1701:13|
 :skolemid |59|
))))
 :qid |DesignatedDealerbpl.1699:50|
 :skolemid |60|
 :pattern ( (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@5 v2@@5))
)))
(assert (forall ((v@@16 T@Vec_54333) ) (! (= (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@16)  (and (|$IsValid'u64'| (|l#Vec_54333| v@@16)) (forall ((i@@25 Int) ) (!  (=> (InRangeVec_48064 v@@16 i@@25) (|$IsValid'$1_VASPDomain_VASPDomain'| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_54333| v@@16) i@@25)))
 :qid |DesignatedDealerbpl.1707:13|
 :skolemid |61|
))))
 :qid |DesignatedDealerbpl.1705:50|
 :skolemid |62|
 :pattern ( (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@16))
)))
(assert (forall ((v@@17 T@Vec_54333) (e@@5 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@26 (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@17 e@@5)))
(ite  (not (exists ((i@@27 Int) ) (!  (and (and (|$IsValid'u64'| i@@27) (InRangeVec_48064 v@@17 i@@27)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_54333| v@@17) i@@27)) (|$domain#$1_VASPDomain_VASPDomain| e@@5)))
 :qid |DesignatedDealerbpl.1712:13|
 :skolemid |63|
))) (= i@@26 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@26) (InRangeVec_48064 v@@17 i@@26)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_54333| v@@17) i@@26)) (|$domain#$1_VASPDomain_VASPDomain| e@@5))) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@26)) (not (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_54333| v@@17) j@@5)) (|$domain#$1_VASPDomain_VASPDomain| e@@5))))
 :qid |DesignatedDealerbpl.1720:17|
 :skolemid |64|
)))))
 :qid |DesignatedDealerbpl.1716:15|
 :skolemid |65|
 :pattern ( (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@17 e@@5))
)))
(assert (forall ((v1@@6 T@Vec_53785) (v2@@6 T@Vec_53785) ) (! (= (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@6 v2@@6)  (and (= (|l#Vec_53785| v1@@6) (|l#Vec_53785| v2@@6)) (forall ((i@@28 Int) ) (!  (=> (InRangeVec_48265 v1@@6 i@@28) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_53785| v1@@6) i@@28)) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_53785| v2@@6) i@@28))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_53785| v1@@6) i@@28)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_53785| v2@@6) i@@28)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_53785| v1@@6) i@@28)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_53785| v2@@6) i@@28)))))
 :qid |DesignatedDealerbpl.1882:13|
 :skolemid |66|
))))
 :qid |DesignatedDealerbpl.1880:51|
 :skolemid |67|
 :pattern ( (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@6 v2@@6))
)))
(assert (forall ((v@@18 T@Vec_53785) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@18)  (and (|$IsValid'u64'| (|l#Vec_53785| v@@18)) (forall ((i@@29 Int) ) (!  (=> (InRangeVec_48265 v@@18 i@@29) (|$IsValid'$1_ValidatorConfig_Config'| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_53785| v@@18) i@@29)))
 :qid |DesignatedDealerbpl.1888:13|
 :skolemid |68|
))))
 :qid |DesignatedDealerbpl.1886:51|
 :skolemid |69|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@18))
)))
(assert (forall ((v@@19 T@Vec_53785) (e@@6 T@$1_ValidatorConfig_Config) ) (! (let ((i@@30 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@19 e@@6)))
(ite  (not (exists ((i@@31 Int) ) (!  (and (and (|$IsValid'u64'| i@@31) (InRangeVec_48265 v@@19 i@@31)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_53785| v@@19) i@@31)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@6)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_53785| v@@19) i@@31)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@6))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_53785| v@@19) i@@31)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@6))))
 :qid |DesignatedDealerbpl.1893:13|
 :skolemid |70|
))) (= i@@30 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@30) (InRangeVec_48265 v@@19 i@@30)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_53785| v@@19) i@@30)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@6)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_53785| v@@19) i@@30)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@6))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_53785| v@@19) i@@30)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@6)))) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@30)) (not (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_53785| v@@19) j@@6)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@6)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_53785| v@@19) j@@6)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@6))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_53785| v@@19) j@@6)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@6)))))
 :qid |DesignatedDealerbpl.1901:17|
 :skolemid |71|
)))))
 :qid |DesignatedDealerbpl.1897:15|
 :skolemid |72|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@19 e@@6))
)))
(assert (forall ((v1@@7 T@Vec_19166) (v2@@7 T@Vec_19166) ) (! (= (|$IsEqual'vec'address''| v1@@7 v2@@7)  (and (= (|l#Vec_19166| v1@@7) (|l#Vec_19166| v2@@7)) (forall ((i@@32 Int) ) (!  (=> (InRangeVec_12105 v1@@7 i@@32) (= (|Select__T@[Int]Int_| (|v#Vec_19166| v1@@7) i@@32) (|Select__T@[Int]Int_| (|v#Vec_19166| v2@@7) i@@32)))
 :qid |DesignatedDealerbpl.2063:13|
 :skolemid |73|
))))
 :qid |DesignatedDealerbpl.2061:33|
 :skolemid |74|
 :pattern ( (|$IsEqual'vec'address''| v1@@7 v2@@7))
)))
(assert (forall ((v@@20 T@Vec_19166) ) (! (= (|$IsValid'vec'address''| v@@20)  (and (|$IsValid'u64'| (|l#Vec_19166| v@@20)) (forall ((i@@33 Int) ) (!  (=> (InRangeVec_12105 v@@20 i@@33) (|$IsValid'address'| (|Select__T@[Int]Int_| (|v#Vec_19166| v@@20) i@@33)))
 :qid |DesignatedDealerbpl.2069:13|
 :skolemid |75|
))))
 :qid |DesignatedDealerbpl.2067:33|
 :skolemid |76|
 :pattern ( (|$IsValid'vec'address''| v@@20))
)))
(assert (forall ((v@@21 T@Vec_19166) (e@@7 Int) ) (! (let ((i@@34 (|$IndexOfVec'address'| v@@21 e@@7)))
(ite  (not (exists ((i@@35 Int) ) (!  (and (and (|$IsValid'u64'| i@@35) (InRangeVec_12105 v@@21 i@@35)) (= (|Select__T@[Int]Int_| (|v#Vec_19166| v@@21) i@@35) e@@7))
 :qid |DesignatedDealerbpl.2074:13|
 :skolemid |77|
))) (= i@@34 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@34) (InRangeVec_12105 v@@21 i@@34)) (= (|Select__T@[Int]Int_| (|v#Vec_19166| v@@21) i@@34) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@34)) (not (= (|Select__T@[Int]Int_| (|v#Vec_19166| v@@21) j@@7) e@@7)))
 :qid |DesignatedDealerbpl.2082:17|
 :skolemid |78|
)))))
 :qid |DesignatedDealerbpl.2078:15|
 :skolemid |79|
 :pattern ( (|$IndexOfVec'address'| v@@21 e@@7))
)))
(assert (forall ((v1@@8 T@Vec_19166) (v2@@8 T@Vec_19166) ) (! (= (|$IsEqual'vec'u64''| v1@@8 v2@@8)  (and (= (|l#Vec_19166| v1@@8) (|l#Vec_19166| v2@@8)) (forall ((i@@36 Int) ) (!  (=> (InRangeVec_12105 v1@@8 i@@36) (= (|Select__T@[Int]Int_| (|v#Vec_19166| v1@@8) i@@36) (|Select__T@[Int]Int_| (|v#Vec_19166| v2@@8) i@@36)))
 :qid |DesignatedDealerbpl.2244:13|
 :skolemid |80|
))))
 :qid |DesignatedDealerbpl.2242:29|
 :skolemid |81|
 :pattern ( (|$IsEqual'vec'u64''| v1@@8 v2@@8))
)))
(assert (forall ((v@@22 T@Vec_19166) ) (! (= (|$IsValid'vec'u64''| v@@22)  (and (|$IsValid'u64'| (|l#Vec_19166| v@@22)) (forall ((i@@37 Int) ) (!  (=> (InRangeVec_12105 v@@22 i@@37) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_19166| v@@22) i@@37)))
 :qid |DesignatedDealerbpl.2250:13|
 :skolemid |82|
))))
 :qid |DesignatedDealerbpl.2248:29|
 :skolemid |83|
 :pattern ( (|$IsValid'vec'u64''| v@@22))
)))
(assert (forall ((v@@23 T@Vec_19166) (e@@8 Int) ) (! (let ((i@@38 (|$IndexOfVec'u64'| v@@23 e@@8)))
(ite  (not (exists ((i@@39 Int) ) (!  (and (and (|$IsValid'u64'| i@@39) (InRangeVec_12105 v@@23 i@@39)) (= (|Select__T@[Int]Int_| (|v#Vec_19166| v@@23) i@@39) e@@8))
 :qid |DesignatedDealerbpl.2255:13|
 :skolemid |84|
))) (= i@@38 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@38) (InRangeVec_12105 v@@23 i@@38)) (= (|Select__T@[Int]Int_| (|v#Vec_19166| v@@23) i@@38) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@38)) (not (= (|Select__T@[Int]Int_| (|v#Vec_19166| v@@23) j@@8) e@@8)))
 :qid |DesignatedDealerbpl.2263:17|
 :skolemid |85|
)))))
 :qid |DesignatedDealerbpl.2259:15|
 :skolemid |86|
 :pattern ( (|$IndexOfVec'u64'| v@@23 e@@8))
)))
(assert (forall ((v1@@9 T@Vec_19166) (v2@@9 T@Vec_19166) ) (! (= (|$IsEqual'vec'u8''| v1@@9 v2@@9)  (and (= (|l#Vec_19166| v1@@9) (|l#Vec_19166| v2@@9)) (forall ((i@@40 Int) ) (!  (=> (InRangeVec_12105 v1@@9 i@@40) (= (|Select__T@[Int]Int_| (|v#Vec_19166| v1@@9) i@@40) (|Select__T@[Int]Int_| (|v#Vec_19166| v2@@9) i@@40)))
 :qid |DesignatedDealerbpl.2425:13|
 :skolemid |87|
))))
 :qid |DesignatedDealerbpl.2423:28|
 :skolemid |88|
 :pattern ( (|$IsEqual'vec'u8''| v1@@9 v2@@9))
)))
(assert (forall ((v@@24 T@Vec_19166) ) (! (= (|$IsValid'vec'u8''| v@@24)  (and (|$IsValid'u64'| (|l#Vec_19166| v@@24)) (forall ((i@@41 Int) ) (!  (=> (InRangeVec_12105 v@@24 i@@41) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_19166| v@@24) i@@41)))
 :qid |DesignatedDealerbpl.2431:13|
 :skolemid |89|
))))
 :qid |DesignatedDealerbpl.2429:28|
 :skolemid |90|
 :pattern ( (|$IsValid'vec'u8''| v@@24))
)))
(assert (forall ((v@@25 T@Vec_19166) (e@@9 Int) ) (! (let ((i@@42 (|$IndexOfVec'u8'| v@@25 e@@9)))
(ite  (not (exists ((i@@43 Int) ) (!  (and (and (|$IsValid'u64'| i@@43) (InRangeVec_12105 v@@25 i@@43)) (= (|Select__T@[Int]Int_| (|v#Vec_19166| v@@25) i@@43) e@@9))
 :qid |DesignatedDealerbpl.2436:13|
 :skolemid |91|
))) (= i@@42 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@42) (InRangeVec_12105 v@@25 i@@42)) (= (|Select__T@[Int]Int_| (|v#Vec_19166| v@@25) i@@42) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@9) (>= j@@9 0)) (< j@@9 i@@42)) (not (= (|Select__T@[Int]Int_| (|v#Vec_19166| v@@25) j@@9) e@@9)))
 :qid |DesignatedDealerbpl.2444:17|
 :skolemid |92|
)))))
 :qid |DesignatedDealerbpl.2440:15|
 :skolemid |93|
 :pattern ( (|$IndexOfVec'u8'| v@@25 e@@9))
)))
(assert (forall ((v1@@10 T@Vec_19166) (v2@@10 T@Vec_19166) ) (! (= (|$IsEqual'vec'u8''| v1@@10 v2@@10) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@10) ($1_Hash_sha2 v2@@10)))
 :qid |DesignatedDealerbpl.2617:15|
 :skolemid |94|
 :pattern ( ($1_Hash_sha2 v1@@10) ($1_Hash_sha2 v2@@10))
)))
(assert (forall ((v1@@11 T@Vec_19166) (v2@@11 T@Vec_19166) ) (! (= (|$IsEqual'vec'u8''| v1@@11 v2@@11) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@11) ($1_Hash_sha3 v2@@11)))
 :qid |DesignatedDealerbpl.2633:15|
 :skolemid |95|
 :pattern ( ($1_Hash_sha3 v1@@11) ($1_Hash_sha3 v2@@11))
)))
(assert (forall ((k1 T@Vec_19166) (k2 T@Vec_19166) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |DesignatedDealerbpl.2704:15|
 :skolemid |96|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_19166) (s2 T@Vec_19166) (k1@@0 T@Vec_19166) (k2@@0 T@Vec_19166) (m1 T@Vec_19166) (m2 T@Vec_19166) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |DesignatedDealerbpl.2707:15|
 :skolemid |97|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_53699_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_53699| stream) 0) (forall ((v@@26 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_53699| stream) v@@26) 0)
 :qid |DesignatedDealerbpl.159:13|
 :skolemid |4|
))))
 :qid |DesignatedDealerbpl.2768:13|
 :skolemid |98|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h) true)
 :qid |DesignatedDealerbpl.2809:80|
 :skolemid |100|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h))
)))
(assert (forall ((v1@@12 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@12 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (=  (and (and (|$IsEqual'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v1@@12) (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v2@@12)) (= (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v1@@12) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v2@@12))) (= (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v1@@12) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v2@@12))) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@12) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@12)))
 :qid |DesignatedDealerbpl.2815:15|
 :skolemid |101|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@12) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@12))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@0) true)
 :qid |DesignatedDealerbpl.2865:78|
 :skolemid |102|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@0))
)))
(assert (forall ((v1@@13 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@13 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v1@@13) (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v2@@13)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v1@@13) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v2@@13))) (= (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v1@@13) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v2@@13))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v1@@13) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v2@@13))) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@13) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@13)))
 :qid |DesignatedDealerbpl.2871:15|
 :skolemid |103|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@13) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@13))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@1) true)
 :qid |DesignatedDealerbpl.2921:74|
 :skolemid |104|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@1))
)))
(assert (forall ((v1@@14 T@$1_DiemAccount_SentPaymentEvent) (v2@@14 T@$1_DiemAccount_SentPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_SentPaymentEvent| v1@@14) (|$amount#$1_DiemAccount_SentPaymentEvent| v2@@14)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| v1@@14) (|$currency_code#$1_DiemAccount_SentPaymentEvent| v2@@14))) (= (|$payee#$1_DiemAccount_SentPaymentEvent| v1@@14) (|$payee#$1_DiemAccount_SentPaymentEvent| v2@@14))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| v1@@14) (|$metadata#$1_DiemAccount_SentPaymentEvent| v2@@14))) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@14) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@14)))
 :qid |DesignatedDealerbpl.2927:15|
 :skolemid |105|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@14) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@14))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@2) true)
 :qid |DesignatedDealerbpl.2977:60|
 :skolemid |106|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@2))
)))
(assert (forall ((v1@@15 T@$1_Diem_BurnEvent) (v2@@15 T@$1_Diem_BurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_BurnEvent| v1@@15) (|$amount#$1_Diem_BurnEvent| v2@@15)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| v1@@15) (|$currency_code#$1_Diem_BurnEvent| v2@@15))) (= (|$preburn_address#$1_Diem_BurnEvent| v1@@15) (|$preburn_address#$1_Diem_BurnEvent| v2@@15))) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@15) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@15)))
 :qid |DesignatedDealerbpl.2983:15|
 :skolemid |107|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@15) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@15))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@3) true)
 :qid |DesignatedDealerbpl.3033:66|
 :skolemid |108|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@3))
)))
(assert (forall ((v1@@16 T@$1_Diem_CancelBurnEvent) (v2@@16 T@$1_Diem_CancelBurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_CancelBurnEvent| v1@@16) (|$amount#$1_Diem_CancelBurnEvent| v2@@16)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| v1@@16) (|$currency_code#$1_Diem_CancelBurnEvent| v2@@16))) (= (|$preburn_address#$1_Diem_CancelBurnEvent| v1@@16) (|$preburn_address#$1_Diem_CancelBurnEvent| v2@@16))) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@16) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@16)))
 :qid |DesignatedDealerbpl.3039:15|
 :skolemid |109|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@16) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@16))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@4) true)
 :qid |DesignatedDealerbpl.3089:60|
 :skolemid |110|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@4))
)))
(assert (forall ((v1@@17 T@$1_Diem_MintEvent) (v2@@17 T@$1_Diem_MintEvent) ) (! (=  (and (= (|$amount#$1_Diem_MintEvent| v1@@17) (|$amount#$1_Diem_MintEvent| v2@@17)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_MintEvent| v1@@17) (|$currency_code#$1_Diem_MintEvent| v2@@17))) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@17) (|$ToEventRep'$1_Diem_MintEvent'| v2@@17)))
 :qid |DesignatedDealerbpl.3095:15|
 :skolemid |111|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@17) (|$ToEventRep'$1_Diem_MintEvent'| v2@@17))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@5) true)
 :qid |DesignatedDealerbpl.3145:63|
 :skolemid |112|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@5))
)))
(assert (forall ((v1@@18 T@$1_Diem_PreburnEvent) (v2@@18 T@$1_Diem_PreburnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_PreburnEvent| v1@@18) (|$amount#$1_Diem_PreburnEvent| v2@@18)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| v1@@18) (|$currency_code#$1_Diem_PreburnEvent| v2@@18))) (= (|$preburn_address#$1_Diem_PreburnEvent| v1@@18) (|$preburn_address#$1_Diem_PreburnEvent| v2@@18))) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@18) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@18)))
 :qid |DesignatedDealerbpl.3151:15|
 :skolemid |113|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@18) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@18))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@6) true)
 :qid |DesignatedDealerbpl.3201:79|
 :skolemid |114|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@6))
)))
(assert (forall ((v1@@19 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@19 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@19) (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@19)) (= (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@19) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@19))) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@19) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@19)))
 :qid |DesignatedDealerbpl.3207:15|
 :skolemid |115|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@19) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@19))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@7) true)
 :qid |DesignatedDealerbpl.3257:82|
 :skolemid |116|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@7))
)))
(assert (forall ((v1@@20 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@20 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v1@@20) (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v2@@20)) (= (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v1@@20) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v2@@20))) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@20) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@20)))
 :qid |DesignatedDealerbpl.3263:15|
 :skolemid |117|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@20) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@20))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@8) true)
 :qid |DesignatedDealerbpl.3313:88|
 :skolemid |118|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@8))
)))
(assert (forall ((v1@@21 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@21 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@21) (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@21)) (= (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@21) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@21))) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@21) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@21)))
 :qid |DesignatedDealerbpl.3319:15|
 :skolemid |119|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@21) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@21))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@9) true)
 :qid |DesignatedDealerbpl.3369:72|
 :skolemid |120|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@9))
)))
(assert (forall ((v1@@22 T@$1_VASPDomain_VASPDomainEvent) (v2@@22 T@$1_VASPDomain_VASPDomainEvent) ) (! (=  (and (and (= (|$removed#$1_VASPDomain_VASPDomainEvent| v1@@22) (|$removed#$1_VASPDomain_VASPDomainEvent| v2@@22)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v1@@22)) (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v2@@22)))) (= (|$address#$1_VASPDomain_VASPDomainEvent| v1@@22) (|$address#$1_VASPDomain_VASPDomainEvent| v2@@22))) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@22) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@22)))
 :qid |DesignatedDealerbpl.3375:15|
 :skolemid |121|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@22) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@22))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |DesignatedDealerbpl.3439:61|
 :skolemid |122|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |DesignatedDealerbpl.3498:36|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |DesignatedDealerbpl.3517:71|
 :skolemid |124|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@2) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@2)))
 :qid |DesignatedDealerbpl.3540:46|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@3)))
 :qid |DesignatedDealerbpl.3552:64|
 :skolemid |126|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@4)))
 :qid |DesignatedDealerbpl.3564:75|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@5)))
 :qid |DesignatedDealerbpl.3576:72|
 :skolemid |128|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5))
)))
(assert (forall ((s@@6 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@6)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@6))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@6))))
 :qid |DesignatedDealerbpl.3604:55|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@7)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@7)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@7))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@7))))
 :qid |DesignatedDealerbpl.3627:46|
 :skolemid |130|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@7))
)))
(assert (forall ((s@@8 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@8)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@8))))
 :qid |DesignatedDealerbpl.3646:49|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8))
)))
(assert (forall ((s@@9 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@9)))
 :qid |DesignatedDealerbpl.3666:71|
 :skolemid |132|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9))
)))
(assert (forall ((s@@10 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@10)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@10)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@10))))
 :qid |DesignatedDealerbpl.3687:45|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@10))
)))
(assert (forall ((s@@11 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@11)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@11)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@11))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@11))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@11))))
 :qid |DesignatedDealerbpl.3710:48|
 :skolemid |134|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@11))
)))
(assert (forall ((s@@12 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@12) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@12)))
 :qid |DesignatedDealerbpl.3728:49|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@12))
)))
(assert (forall ((s@@13 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@13) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@13)))
 :qid |DesignatedDealerbpl.3846:45|
 :skolemid |136|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@14) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@14)))
 :qid |DesignatedDealerbpl.3859:45|
 :skolemid |137|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@14))
)))
(assert (forall ((s@@15 |T@$1_Diem_Diem'#0'|) ) (! (= (|$IsValid'$1_Diem_Diem'#0''| s@@15) (|$IsValid'u64'| (|$value#$1_Diem_Diem'#0'| s@@15)))
 :qid |DesignatedDealerbpl.3872:37|
 :skolemid |138|
 :pattern ( (|$IsValid'$1_Diem_Diem'#0''| s@@15))
)))
(assert (forall ((s@@16 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@16)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@16)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@16))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@16))))
 :qid |DesignatedDealerbpl.3891:38|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@16))
)))
(assert (forall ((s@@17 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@17)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@17)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@17))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@17))))
 :qid |DesignatedDealerbpl.3913:44|
 :skolemid |140|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@17))
)))
(assert (forall ((s@@18 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@18)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@18)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@18))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@18))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@18))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@18))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@18))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@18))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@18))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@18))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@18))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@18))))
 :qid |DesignatedDealerbpl.3965:53|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@19)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@19)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@19))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@19))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@19))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@19))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@19))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@19))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@19))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@19))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@19))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@19))))
 :qid |DesignatedDealerbpl.4038:53|
 :skolemid |142|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_Diem_CurrencyInfo'#0'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@20)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'#0'| s@@20)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'#0'| s@@20))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| s@@20))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| s@@20))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'#0'| s@@20))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'#0'| s@@20))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'#0'| s@@20))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'#0'| s@@20))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'#0'| s@@20))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| s@@20))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| s@@20))))
 :qid |DesignatedDealerbpl.4111:45|
 :skolemid |143|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@20))
)))
(assert (forall ((s@@21 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@21) true)
 :qid |DesignatedDealerbpl.4148:55|
 :skolemid |144|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@21))
)))
(assert (forall ((s@@22 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@22) true)
 :qid |DesignatedDealerbpl.4162:55|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@22))
)))
(assert (forall ((s@@23 |T@$1_Diem_MintCapability'#0'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'#0''| s@@23) true)
 :qid |DesignatedDealerbpl.4176:47|
 :skolemid |146|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'#0''| s@@23))
)))
(assert (forall ((s@@24 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@24)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@24)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@24))))
 :qid |DesignatedDealerbpl.4193:38|
 :skolemid |147|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@24))
)))
(assert (forall ((s@@25 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@25) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@25)))
 :qid |DesignatedDealerbpl.4207:48|
 :skolemid |148|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@25))
)))
(assert (forall ((s@@26 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@26) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@26)))
 :qid |DesignatedDealerbpl.4221:48|
 :skolemid |149|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@26))
)))
(assert (forall ((s@@27 |T@$1_Diem_Preburn'#0'|) ) (! (= (|$IsValid'$1_Diem_Preburn'#0''| s@@27) (|$IsValid'$1_Diem_Diem'#0''| (|$to_burn#$1_Diem_Preburn'#0'| s@@27)))
 :qid |DesignatedDealerbpl.4235:40|
 :skolemid |150|
 :pattern ( (|$IsValid'$1_Diem_Preburn'#0''| s@@27))
)))
(assert (forall ((s@@28 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@28)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@28)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@28))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@28))))
 :qid |DesignatedDealerbpl.4255:41|
 :skolemid |151|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@29) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@29)))
 :qid |DesignatedDealerbpl.4271:53|
 :skolemid |152|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@30) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@30)))
 :qid |DesignatedDealerbpl.4284:53|
 :skolemid |153|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_PreburnQueue'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@31) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| (|$preburns#$1_Diem_PreburnQueue'#0'| s@@31)))
 :qid |DesignatedDealerbpl.4297:45|
 :skolemid |154|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@32)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@32)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@32))))
 :qid |DesignatedDealerbpl.4313:60|
 :skolemid |155|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@32))
)))
(assert (forall ((s@@33 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@33)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@33)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@33))))
 :qid |DesignatedDealerbpl.4330:60|
 :skolemid |156|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@33))
)))
(assert (forall ((s@@34 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@34)  (and (|$IsValid'$1_Diem_Preburn'#0''| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| s@@34)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| s@@34))))
 :qid |DesignatedDealerbpl.4347:52|
 :skolemid |157|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@34))
)))
(assert (forall ((s@@35 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@35)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@35)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@35))))
 :qid |DesignatedDealerbpl.4364:57|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@35))
)))
(assert (forall ((s@@36 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@36) true)
 :qid |DesignatedDealerbpl.5059:31|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@36))
)))
(assert (forall ((s@@37 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@37) true)
 :qid |DesignatedDealerbpl.5072:31|
 :skolemid |160|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@37))
)))
(assert (forall ((s@@38 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@38) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@38)))
 :qid |DesignatedDealerbpl.5085:45|
 :skolemid |161|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@38))
)))
(assert (forall ((s@@39 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@39)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@39))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@39))))
 :qid |DesignatedDealerbpl.5103:50|
 :skolemid |162|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@39))
)))
(assert (forall ((s@@40 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@40) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@40)))
 :qid |DesignatedDealerbpl.5119:52|
 :skolemid |163|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@40))
)))
(assert (forall ((s@@41 T@$1_VASPDomain_VASPDomains) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomains'| s@@41) (|$IsValid'vec'$1_VASPDomain_VASPDomain''| (|$domains#$1_VASPDomain_VASPDomains| s@@41)))
 :qid |DesignatedDealerbpl.5132:46|
 :skolemid |164|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomains'| s@@41))
)))
(assert (forall ((s@@42 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@42) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@42)))
 :qid |DesignatedDealerbpl.5155:38|
 :skolemid |165|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@42))
)))
(assert (forall ((s@@43 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@43) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@43)))
 :qid |DesignatedDealerbpl.5169:39|
 :skolemid |166|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@43))
)))
(assert (forall ((s@@44 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@44)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@44)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@44))))
 :qid |DesignatedDealerbpl.5191:60|
 :skolemid |167|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@44))
)))
(assert (forall ((s@@45 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@45)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@45)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@45))))
 :qid |DesignatedDealerbpl.5208:66|
 :skolemid |168|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@45))
)))
(assert (forall ((s@@46 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@46)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@46)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@46))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@46))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@46))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@46))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@46))))
 :qid |DesignatedDealerbpl.5237:50|
 :skolemid |169|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@46))
)))
(assert (forall ((s@@47 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@47) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@47)))
 :qid |DesignatedDealerbpl.5260:47|
 :skolemid |170|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@47))
)))
(assert (forall ((s@@48 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@48)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@48)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@48))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@48))))
 :qid |DesignatedDealerbpl.5279:58|
 :skolemid |171|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@48))
)))
(assert (forall ((s@@49 |T@$1_DesignatedDealer_TierInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DesignatedDealer_TierInfo'$1_XUS_XUS''| s@@49)  (and (and (|$IsValid'u64'| (|$window_start#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| s@@49)) (|$IsValid'u64'| (|$window_inflow#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| s@@49))) (|$IsValid'vec'u64''| (|$tiers#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| s@@49))))
 :qid |DesignatedDealerbpl.5301:61|
 :skolemid |172|
 :pattern ( (|$IsValid'$1_DesignatedDealer_TierInfo'$1_XUS_XUS''| s@@49))
)))
(assert (forall ((s@@50 |T@$1_DesignatedDealer_TierInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DesignatedDealer_TierInfo'$1_XDX_XDX''| s@@50)  (and (and (|$IsValid'u64'| (|$window_start#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| s@@50)) (|$IsValid'u64'| (|$window_inflow#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| s@@50))) (|$IsValid'vec'u64''| (|$tiers#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| s@@50))))
 :qid |DesignatedDealerbpl.5324:61|
 :skolemid |173|
 :pattern ( (|$IsValid'$1_DesignatedDealer_TierInfo'$1_XDX_XDX''| s@@50))
)))
(assert (forall ((s@@51 |T@$1_DesignatedDealer_TierInfo'#0'|) ) (! (= (|$IsValid'$1_DesignatedDealer_TierInfo'#0''| s@@51)  (and (and (|$IsValid'u64'| (|$window_start#$1_DesignatedDealer_TierInfo'#0'| s@@51)) (|$IsValid'u64'| (|$window_inflow#$1_DesignatedDealer_TierInfo'#0'| s@@51))) (|$IsValid'vec'u64''| (|$tiers#$1_DesignatedDealer_TierInfo'#0'| s@@51))))
 :qid |DesignatedDealerbpl.5347:53|
 :skolemid |174|
 :pattern ( (|$IsValid'$1_DesignatedDealer_TierInfo'#0''| s@@51))
)))
(assert (forall ((s@@52 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@52)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@52)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@52))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@52))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@52))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@52))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@52))))
 :qid |DesignatedDealerbpl.9412:47|
 :skolemid |460|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@52))
)))
(assert (forall ((s@@53 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@53) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@53)))
 :qid |DesignatedDealerbpl.9435:55|
 :skolemid |461|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@53))
)))
(assert (forall ((s@@54 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@54) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@54)))
 :qid |DesignatedDealerbpl.9449:55|
 :skolemid |462|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@54))
)))
(assert (forall ((s@@55 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@55) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@55)))
 :qid |DesignatedDealerbpl.9463:57|
 :skolemid |463|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@55))
)))
(assert (forall ((s@@56 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@56)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@56)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@56))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@56))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@56))))
 :qid |DesignatedDealerbpl.9485:56|
 :skolemid |464|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@56))
)))
(assert (forall ((s@@57 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@57)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@57)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@57))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@57))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@57))))
 :qid |DesignatedDealerbpl.9512:52|
 :skolemid |465|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@57))
)))
(assert (forall ((s@@58 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@58) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@58)))
 :qid |DesignatedDealerbpl.9530:54|
 :skolemid |466|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@58))
)))
(assert (forall ((v@@27 T@Vec_53824) (i@@44 Int) ) (! (= (InRangeVec_46858 v@@27 i@@44)  (and (>= i@@44 0) (< i@@44 (|l#Vec_53824| v@@27))))
 :qid |DesignatedDealerbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_46858 v@@27 i@@44))
)))
(assert (forall ((v@@28 T@Vec_53863) (i@@45 Int) ) (! (= (InRangeVec_47059 v@@28 i@@45)  (and (>= i@@45 0) (< i@@45 (|l#Vec_53863| v@@28))))
 :qid |DesignatedDealerbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_47059 v@@28 i@@45))
)))
(assert (forall ((v@@29 T@Vec_53941) (i@@46 Int) ) (! (= (InRangeVec_47260 v@@29 i@@46)  (and (>= i@@46 0) (< i@@46 (|l#Vec_53941| v@@29))))
 :qid |DesignatedDealerbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_47260 v@@29 i@@46))
)))
(assert (forall ((v@@30 T@Vec_54231) (i@@47 Int) ) (! (= (InRangeVec_47461 v@@30 i@@47)  (and (>= i@@47 0) (< i@@47 (|l#Vec_54231| v@@30))))
 :qid |DesignatedDealerbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_47461 v@@30 i@@47))
)))
(assert (forall ((v@@31 T@Vec_54192) (i@@48 Int) ) (! (= (InRangeVec_47662 v@@31 i@@48)  (and (>= i@@48 0) (< i@@48 (|l#Vec_54192| v@@31))))
 :qid |DesignatedDealerbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_47662 v@@31 i@@48))
)))
(assert (forall ((v@@32 T@Vec_54153) (i@@49 Int) ) (! (= (InRangeVec_47863 v@@32 i@@49)  (and (>= i@@49 0) (< i@@49 (|l#Vec_54153| v@@32))))
 :qid |DesignatedDealerbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_47863 v@@32 i@@49))
)))
(assert (forall ((v@@33 T@Vec_54333) (i@@50 Int) ) (! (= (InRangeVec_48064 v@@33 i@@50)  (and (>= i@@50 0) (< i@@50 (|l#Vec_54333| v@@33))))
 :qid |DesignatedDealerbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_48064 v@@33 i@@50))
)))
(assert (forall ((v@@34 T@Vec_53785) (i@@51 Int) ) (! (= (InRangeVec_48265 v@@34 i@@51)  (and (>= i@@51 0) (< i@@51 (|l#Vec_53785| v@@34))))
 :qid |DesignatedDealerbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_48265 v@@34 i@@51))
)))
(assert (forall ((v@@35 T@Vec_19166) (i@@52 Int) ) (! (= (InRangeVec_12105 v@@35 i@@52)  (and (>= i@@52 0) (< i@@52 (|l#Vec_19166| v@@35))))
 :qid |DesignatedDealerbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_12105 v@@35 i@@52))
)))
(assert (forall ((v@@36 T@Vec_19166) (e@@10 Int) ) (! (let ((i@@53 (IndexOfVec_19166 v@@36 e@@10)))
(ite  (not (exists ((i@@54 Int) ) (!  (and (InRangeVec_12105 v@@36 i@@54) (= (|Select__T@[Int]Int_| (|v#Vec_19166| v@@36) i@@54) e@@10))
 :qid |DesignatedDealerbpl.109:13|
 :skolemid |0|
))) (= i@@53 (- 0 1))  (and (and (InRangeVec_12105 v@@36 i@@53) (= (|Select__T@[Int]Int_| (|v#Vec_19166| v@@36) i@@53) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (>= j@@10 0) (< j@@10 i@@53)) (not (= (|Select__T@[Int]Int_| (|v#Vec_19166| v@@36) j@@10) e@@10)))
 :qid |DesignatedDealerbpl.117:17|
 :skolemid |1|
)))))
 :qid |DesignatedDealerbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_19166 v@@36 e@@10))
)))
(assert (forall ((v@@37 T@Vec_53785) (e@@11 T@$1_ValidatorConfig_Config) ) (! (let ((i@@55 (IndexOfVec_53785 v@@37 e@@11)))
(ite  (not (exists ((i@@56 Int) ) (!  (and (InRangeVec_48265 v@@37 i@@56) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_53785| v@@37) i@@56) e@@11))
 :qid |DesignatedDealerbpl.109:13|
 :skolemid |0|
))) (= i@@55 (- 0 1))  (and (and (InRangeVec_48265 v@@37 i@@55) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_53785| v@@37) i@@55) e@@11)) (forall ((j@@11 Int) ) (!  (=> (and (>= j@@11 0) (< j@@11 i@@55)) (not (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_53785| v@@37) j@@11) e@@11)))
 :qid |DesignatedDealerbpl.117:17|
 :skolemid |1|
)))))
 :qid |DesignatedDealerbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_53785 v@@37 e@@11))
)))
(assert (forall ((v@@38 T@Vec_53824) (e@@12 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@57 (IndexOfVec_53824 v@@38 e@@12)))
(ite  (not (exists ((i@@58 Int) ) (!  (and (InRangeVec_46858 v@@38 i@@58) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_53824| v@@38) i@@58) e@@12))
 :qid |DesignatedDealerbpl.109:13|
 :skolemid |0|
))) (= i@@57 (- 0 1))  (and (and (InRangeVec_46858 v@@38 i@@57) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_53824| v@@38) i@@57) e@@12)) (forall ((j@@12 Int) ) (!  (=> (and (>= j@@12 0) (< j@@12 i@@57)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_53824| v@@38) j@@12) e@@12)))
 :qid |DesignatedDealerbpl.117:17|
 :skolemid |1|
)))))
 :qid |DesignatedDealerbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_53824 v@@38 e@@12))
)))
(assert (forall ((v@@39 T@Vec_53863) (e@@13 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@59 (IndexOfVec_53863 v@@39 e@@13)))
(ite  (not (exists ((i@@60 Int) ) (!  (and (InRangeVec_47059 v@@39 i@@60) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_53863| v@@39) i@@60) e@@13))
 :qid |DesignatedDealerbpl.109:13|
 :skolemid |0|
))) (= i@@59 (- 0 1))  (and (and (InRangeVec_47059 v@@39 i@@59) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_53863| v@@39) i@@59) e@@13)) (forall ((j@@13 Int) ) (!  (=> (and (>= j@@13 0) (< j@@13 i@@59)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_53863| v@@39) j@@13) e@@13)))
 :qid |DesignatedDealerbpl.117:17|
 :skolemid |1|
)))))
 :qid |DesignatedDealerbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_53863 v@@39 e@@13))
)))
(assert (forall ((v@@40 T@Vec_53941) (e@@14 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@61 (IndexOfVec_53941 v@@40 e@@14)))
(ite  (not (exists ((i@@62 Int) ) (!  (and (InRangeVec_47260 v@@40 i@@62) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_53941| v@@40) i@@62) e@@14))
 :qid |DesignatedDealerbpl.109:13|
 :skolemid |0|
))) (= i@@61 (- 0 1))  (and (and (InRangeVec_47260 v@@40 i@@61) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_53941| v@@40) i@@61) e@@14)) (forall ((j@@14 Int) ) (!  (=> (and (>= j@@14 0) (< j@@14 i@@61)) (not (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_53941| v@@40) j@@14) e@@14)))
 :qid |DesignatedDealerbpl.117:17|
 :skolemid |1|
)))))
 :qid |DesignatedDealerbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_53941 v@@40 e@@14))
)))
(assert (forall ((v@@41 T@Vec_54153) (e@@15 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@63 (IndexOfVec_54153 v@@41 e@@15)))
(ite  (not (exists ((i@@64 Int) ) (!  (and (InRangeVec_47863 v@@41 i@@64) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_54153| v@@41) i@@64) e@@15))
 :qid |DesignatedDealerbpl.109:13|
 :skolemid |0|
))) (= i@@63 (- 0 1))  (and (and (InRangeVec_47863 v@@41 i@@63) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_54153| v@@41) i@@63) e@@15)) (forall ((j@@15 Int) ) (!  (=> (and (>= j@@15 0) (< j@@15 i@@63)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_54153| v@@41) j@@15) e@@15)))
 :qid |DesignatedDealerbpl.117:17|
 :skolemid |1|
)))))
 :qid |DesignatedDealerbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_54153 v@@41 e@@15))
)))
(assert (forall ((v@@42 T@Vec_54192) (e@@16 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@65 (IndexOfVec_54192 v@@42 e@@16)))
(ite  (not (exists ((i@@66 Int) ) (!  (and (InRangeVec_47662 v@@42 i@@66) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_54192| v@@42) i@@66) e@@16))
 :qid |DesignatedDealerbpl.109:13|
 :skolemid |0|
))) (= i@@65 (- 0 1))  (and (and (InRangeVec_47662 v@@42 i@@65) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_54192| v@@42) i@@65) e@@16)) (forall ((j@@16 Int) ) (!  (=> (and (>= j@@16 0) (< j@@16 i@@65)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_54192| v@@42) j@@16) e@@16)))
 :qid |DesignatedDealerbpl.117:17|
 :skolemid |1|
)))))
 :qid |DesignatedDealerbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_54192 v@@42 e@@16))
)))
(assert (forall ((v@@43 T@Vec_54231) (e@@17 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (let ((i@@67 (IndexOfVec_54231 v@@43 e@@17)))
(ite  (not (exists ((i@@68 Int) ) (!  (and (InRangeVec_47461 v@@43 i@@68) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_54231| v@@43) i@@68) e@@17))
 :qid |DesignatedDealerbpl.109:13|
 :skolemid |0|
))) (= i@@67 (- 0 1))  (and (and (InRangeVec_47461 v@@43 i@@67) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_54231| v@@43) i@@67) e@@17)) (forall ((j@@17 Int) ) (!  (=> (and (>= j@@17 0) (< j@@17 i@@67)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_54231| v@@43) j@@17) e@@17)))
 :qid |DesignatedDealerbpl.117:17|
 :skolemid |1|
)))))
 :qid |DesignatedDealerbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_54231 v@@43 e@@17))
)))
(assert (forall ((v@@44 T@Vec_54333) (e@@18 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@69 (IndexOfVec_54333 v@@44 e@@18)))
(ite  (not (exists ((i@@70 Int) ) (!  (and (InRangeVec_48064 v@@44 i@@70) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_54333| v@@44) i@@70) e@@18))
 :qid |DesignatedDealerbpl.109:13|
 :skolemid |0|
))) (= i@@69 (- 0 1))  (and (and (InRangeVec_48064 v@@44 i@@69) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_54333| v@@44) i@@69) e@@18)) (forall ((j@@18 Int) ) (!  (=> (and (>= j@@18 0) (< j@@18 i@@69)) (not (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_54333| v@@44) j@@18) e@@18)))
 :qid |DesignatedDealerbpl.117:17|
 :skolemid |1|
)))))
 :qid |DesignatedDealerbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_54333 v@@44 e@@18))
)))
(assert (forall ((|l#0| Bool) (i@@71 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@71) |l#0|)
 :qid |DesignatedDealerbpl.275:54|
 :skolemid |467|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@71))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_53699|) (|l#1| |T@[$1_Event_EventHandle]Multiset_53699|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_53699_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_53699| (|Select__T@[$1_Event_EventHandle]Multiset_53699_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_53699| (|Select__T@[$1_Event_EventHandle]Multiset_53699_| |l#1| handle@@0))))
(Multiset_53699 (|lambda#30| (|v#Multiset_53699| (|Select__T@[$1_Event_EventHandle]Multiset_53699_| |l#0@@0| handle@@0)) (|v#Multiset_53699| (|Select__T@[$1_Event_EventHandle]Multiset_53699_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |DesignatedDealerbpl.2778:13|
 :skolemid |468|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_53699_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2| Int) (|l#3| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5| Int) (|l#6| T@$1_DiemAccount_KeyRotationCapability) (i@@72 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@72) (ite  (and (>= i@@72 |l#0@@1|) (< i@@72 |l#1@@0|)) (ite (< i@@72 |l#2|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3| i@@72) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4| (- i@@72 |l#5|))) |l#6|))
 :qid |DesignatedDealerbpl.73:19|
 :skolemid |469|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@72))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@0| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| T@$1_DiemAccount_KeyRotationCapability) (i@@73 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@73) (ite  (and (<= |l#0@@2| i@@73) (< i@@73 |l#1@@1|)) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#2@@0| (- (- |l#3@@0| i@@73) |l#4@@0|)) |l#5@@0|))
 :qid |DesignatedDealerbpl.82:30|
 :skolemid |470|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@73))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@1| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@1| Int) (|l#6@@0| T@$1_DiemAccount_KeyRotationCapability) (j@@19 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@19) (ite  (and (>= j@@19 |l#0@@3|) (< j@@19 |l#1@@2|)) (ite (< j@@19 |l#2@@1|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@1| j@@19) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@1| (+ j@@19 |l#5@@1|))) |l#6@@0|))
 :qid |DesignatedDealerbpl.63:20|
 :skolemid |471|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@19))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@2| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@2| Int) (|l#6@@1| T@$1_DiemAccount_WithdrawCapability) (i@@74 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@74) (ite  (and (>= i@@74 |l#0@@4|) (< i@@74 |l#1@@3|)) (ite (< i@@74 |l#2@@2|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@2| i@@74) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@2| (- i@@74 |l#5@@2|))) |l#6@@1|))
 :qid |DesignatedDealerbpl.73:19|
 :skolemid |472|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@74))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@3| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| T@$1_DiemAccount_WithdrawCapability) (i@@75 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@75) (ite  (and (<= |l#0@@5| i@@75) (< i@@75 |l#1@@4|)) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#2@@3| (- (- |l#3@@3| i@@75) |l#4@@3|)) |l#5@@3|))
 :qid |DesignatedDealerbpl.82:30|
 :skolemid |473|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@75))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@4| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@4| Int) (|l#6@@2| T@$1_DiemAccount_WithdrawCapability) (j@@20 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@20) (ite  (and (>= j@@20 |l#0@@6|) (< j@@20 |l#1@@5|)) (ite (< j@@20 |l#2@@4|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@4| j@@20) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@4| (+ j@@20 |l#5@@4|))) |l#6@@2|))
 :qid |DesignatedDealerbpl.63:20|
 :skolemid |474|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@20))
)))
(assert (forall ((|l#0@@7| Int) (|l#1@@6| Int) (|l#2@@5| Int) (|l#3@@5| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@5| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@5| Int) (|l#6@@3| T@$1_DiemSystem_ValidatorInfo) (i@@76 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@76) (ite  (and (>= i@@76 |l#0@@7|) (< i@@76 |l#1@@6|)) (ite (< i@@76 |l#2@@5|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@5| i@@76) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@5| (- i@@76 |l#5@@5|))) |l#6@@3|))
 :qid |DesignatedDealerbpl.73:19|
 :skolemid |475|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@76))
)))
(assert (forall ((|l#0@@8| Int) (|l#1@@7| Int) (|l#2@@6| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#3@@6| Int) (|l#4@@6| Int) (|l#5@@6| T@$1_DiemSystem_ValidatorInfo) (i@@77 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@77) (ite  (and (<= |l#0@@8| i@@77) (< i@@77 |l#1@@7|)) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#2@@6| (- (- |l#3@@6| i@@77) |l#4@@6|)) |l#5@@6|))
 :qid |DesignatedDealerbpl.82:30|
 :skolemid |476|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@77))
)))
(assert (forall ((|l#0@@9| Int) (|l#1@@8| Int) (|l#2@@7| Int) (|l#3@@7| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@7| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@7| Int) (|l#6@@4| T@$1_DiemSystem_ValidatorInfo) (j@@21 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@21) (ite  (and (>= j@@21 |l#0@@9|) (< j@@21 |l#1@@8|)) (ite (< j@@21 |l#2@@7|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@7| j@@21) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@7| (+ j@@21 |l#5@@7|))) |l#6@@4|))
 :qid |DesignatedDealerbpl.63:20|
 :skolemid |477|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@21))
)))
(assert (forall ((|l#0@@10| Int) (|l#1@@9| Int) (|l#2@@8| Int) (|l#3@@8| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#4@@8| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#5@@8| Int) (|l#6@@5| |T@$1_Diem_PreburnWithMetadata'#0'|) (i@@78 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@78) (ite  (and (>= i@@78 |l#0@@10|) (< i@@78 |l#1@@9|)) (ite (< i@@78 |l#2@@8|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#3@@8| i@@78) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#4@@8| (- i@@78 |l#5@@8|))) |l#6@@5|))
 :qid |DesignatedDealerbpl.73:19|
 :skolemid |478|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@78))
)))
(assert (forall ((|l#0@@11| Int) (|l#1@@10| Int) (|l#2@@9| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#3@@9| Int) (|l#4@@9| Int) (|l#5@@9| |T@$1_Diem_PreburnWithMetadata'#0'|) (i@@79 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@79) (ite  (and (<= |l#0@@11| i@@79) (< i@@79 |l#1@@10|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#2@@9| (- (- |l#3@@9| i@@79) |l#4@@9|)) |l#5@@9|))
 :qid |DesignatedDealerbpl.82:30|
 :skolemid |479|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@79))
)))
(assert (forall ((|l#0@@12| Int) (|l#1@@11| Int) (|l#2@@10| Int) (|l#3@@10| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#4@@10| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#5@@10| Int) (|l#6@@6| |T@$1_Diem_PreburnWithMetadata'#0'|) (j@@22 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@22) (ite  (and (>= j@@22 |l#0@@12|) (< j@@22 |l#1@@11|)) (ite (< j@@22 |l#2@@10|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#3@@10| j@@22) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#4@@10| (+ j@@22 |l#5@@10|))) |l#6@@6|))
 :qid |DesignatedDealerbpl.63:20|
 :skolemid |480|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@22))
)))
(assert (forall ((|l#0@@13| Int) (|l#1@@12| Int) (|l#2@@11| Int) (|l#3@@11| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#4@@11| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#5@@11| Int) (|l#6@@7| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (i@@80 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@80) (ite  (and (>= i@@80 |l#0@@13|) (< i@@80 |l#1@@12|)) (ite (< i@@80 |l#2@@11|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#3@@11| i@@80) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#4@@11| (- i@@80 |l#5@@11|))) |l#6@@7|))
 :qid |DesignatedDealerbpl.73:19|
 :skolemid |481|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@80))
)))
(assert (forall ((|l#0@@14| Int) (|l#1@@13| Int) (|l#2@@12| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#3@@12| Int) (|l#4@@12| Int) (|l#5@@12| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (i@@81 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@81) (ite  (and (<= |l#0@@14| i@@81) (< i@@81 |l#1@@13|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#2@@12| (- (- |l#3@@12| i@@81) |l#4@@12|)) |l#5@@12|))
 :qid |DesignatedDealerbpl.82:30|
 :skolemid |482|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@81))
)))
(assert (forall ((|l#0@@15| Int) (|l#1@@14| Int) (|l#2@@13| Int) (|l#3@@13| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#4@@13| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#5@@13| Int) (|l#6@@8| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (j@@23 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@23) (ite  (and (>= j@@23 |l#0@@15|) (< j@@23 |l#1@@14|)) (ite (< j@@23 |l#2@@13|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#3@@13| j@@23) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#4@@13| (+ j@@23 |l#5@@13|))) |l#6@@8|))
 :qid |DesignatedDealerbpl.63:20|
 :skolemid |483|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@23))
)))
(assert (forall ((|l#0@@16| Int) (|l#1@@15| Int) (|l#2@@14| Int) (|l#3@@14| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#4@@14| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#5@@14| Int) (|l#6@@9| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (i@@82 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@82) (ite  (and (>= i@@82 |l#0@@16|) (< i@@82 |l#1@@15|)) (ite (< i@@82 |l#2@@14|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#3@@14| i@@82) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#4@@14| (- i@@82 |l#5@@14|))) |l#6@@9|))
 :qid |DesignatedDealerbpl.73:19|
 :skolemid |484|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@82))
)))
(assert (forall ((|l#0@@17| Int) (|l#1@@16| Int) (|l#2@@15| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#3@@15| Int) (|l#4@@15| Int) (|l#5@@15| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (i@@83 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@83) (ite  (and (<= |l#0@@17| i@@83) (< i@@83 |l#1@@16|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#2@@15| (- (- |l#3@@15| i@@83) |l#4@@15|)) |l#5@@15|))
 :qid |DesignatedDealerbpl.82:30|
 :skolemid |485|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@83))
)))
(assert (forall ((|l#0@@18| Int) (|l#1@@17| Int) (|l#2@@16| Int) (|l#3@@16| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#4@@16| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#5@@16| Int) (|l#6@@10| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (j@@24 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@24) (ite  (and (>= j@@24 |l#0@@18|) (< j@@24 |l#1@@17|)) (ite (< j@@24 |l#2@@16|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#3@@16| j@@24) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#4@@16| (+ j@@24 |l#5@@16|))) |l#6@@10|))
 :qid |DesignatedDealerbpl.63:20|
 :skolemid |486|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@24))
)))
(assert (forall ((|l#0@@19| Int) (|l#1@@18| Int) (|l#2@@17| Int) (|l#3@@17| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@17| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@17| Int) (|l#6@@11| T@$1_VASPDomain_VASPDomain) (i@@84 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@84) (ite  (and (>= i@@84 |l#0@@19|) (< i@@84 |l#1@@18|)) (ite (< i@@84 |l#2@@17|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@17| i@@84) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@17| (- i@@84 |l#5@@17|))) |l#6@@11|))
 :qid |DesignatedDealerbpl.73:19|
 :skolemid |487|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@84))
)))
(assert (forall ((|l#0@@20| Int) (|l#1@@19| Int) (|l#2@@18| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#3@@18| Int) (|l#4@@18| Int) (|l#5@@18| T@$1_VASPDomain_VASPDomain) (i@@85 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@85) (ite  (and (<= |l#0@@20| i@@85) (< i@@85 |l#1@@19|)) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#2@@18| (- (- |l#3@@18| i@@85) |l#4@@18|)) |l#5@@18|))
 :qid |DesignatedDealerbpl.82:30|
 :skolemid |488|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@85))
)))
(assert (forall ((|l#0@@21| Int) (|l#1@@20| Int) (|l#2@@19| Int) (|l#3@@19| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@19| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@19| Int) (|l#6@@12| T@$1_VASPDomain_VASPDomain) (j@@25 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@25) (ite  (and (>= j@@25 |l#0@@21|) (< j@@25 |l#1@@20|)) (ite (< j@@25 |l#2@@19|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@19| j@@25) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@19| (+ j@@25 |l#5@@19|))) |l#6@@12|))
 :qid |DesignatedDealerbpl.63:20|
 :skolemid |489|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@25))
)))
(assert (forall ((|l#0@@22| Int) (|l#1@@21| Int) (|l#2@@20| Int) (|l#3@@20| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@20| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@20| Int) (|l#6@@13| T@$1_ValidatorConfig_Config) (i@@86 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@86) (ite  (and (>= i@@86 |l#0@@22|) (< i@@86 |l#1@@21|)) (ite (< i@@86 |l#2@@20|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@20| i@@86) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@20| (- i@@86 |l#5@@20|))) |l#6@@13|))
 :qid |DesignatedDealerbpl.73:19|
 :skolemid |490|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@86))
)))
(assert (forall ((|l#0@@23| Int) (|l#1@@22| Int) (|l#2@@21| |T@[Int]$1_ValidatorConfig_Config|) (|l#3@@21| Int) (|l#4@@21| Int) (|l#5@@21| T@$1_ValidatorConfig_Config) (i@@87 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@87) (ite  (and (<= |l#0@@23| i@@87) (< i@@87 |l#1@@22|)) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#2@@21| (- (- |l#3@@21| i@@87) |l#4@@21|)) |l#5@@21|))
 :qid |DesignatedDealerbpl.82:30|
 :skolemid |491|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@87))
)))
(assert (forall ((|l#0@@24| Int) (|l#1@@23| Int) (|l#2@@22| Int) (|l#3@@22| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@22| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@22| Int) (|l#6@@14| T@$1_ValidatorConfig_Config) (j@@26 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@26) (ite  (and (>= j@@26 |l#0@@24|) (< j@@26 |l#1@@23|)) (ite (< j@@26 |l#2@@22|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@22| j@@26) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@22| (+ j@@26 |l#5@@22|))) |l#6@@14|))
 :qid |DesignatedDealerbpl.63:20|
 :skolemid |492|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@26))
)))
(assert (forall ((|l#0@@25| Int) (|l#1@@24| Int) (|l#2@@23| Int) (|l#3@@23| |T@[Int]Int|) (|l#4@@23| |T@[Int]Int|) (|l#5@@23| Int) (|l#6@@15| Int) (i@@88 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#27| |l#0@@25| |l#1@@24| |l#2@@23| |l#3@@23| |l#4@@23| |l#5@@23| |l#6@@15|) i@@88) (ite  (and (>= i@@88 |l#0@@25|) (< i@@88 |l#1@@24|)) (ite (< i@@88 |l#2@@23|) (|Select__T@[Int]Int_| |l#3@@23| i@@88) (|Select__T@[Int]Int_| |l#4@@23| (- i@@88 |l#5@@23|))) |l#6@@15|))
 :qid |DesignatedDealerbpl.73:19|
 :skolemid |493|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#27| |l#0@@25| |l#1@@24| |l#2@@23| |l#3@@23| |l#4@@23| |l#5@@23| |l#6@@15|) i@@88))
)))
(assert (forall ((|l#0@@26| Int) (|l#1@@25| Int) (|l#2@@24| |T@[Int]Int|) (|l#3@@24| Int) (|l#4@@24| Int) (|l#5@@24| Int) (i@@89 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@24| |l#3@@24| |l#4@@24| |l#5@@24|) i@@89) (ite  (and (<= |l#0@@26| i@@89) (< i@@89 |l#1@@25|)) (|Select__T@[Int]Int_| |l#2@@24| (- (- |l#3@@24| i@@89) |l#4@@24|)) |l#5@@24|))
 :qid |DesignatedDealerbpl.82:30|
 :skolemid |494|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@24| |l#3@@24| |l#4@@24| |l#5@@24|) i@@89))
)))
(assert (forall ((|l#0@@27| Int) (|l#1@@26| Int) (|l#2@@25| Int) (|l#3@@25| |T@[Int]Int|) (|l#4@@25| |T@[Int]Int|) (|l#5@@25| Int) (|l#6@@16| Int) (j@@27 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#29| |l#0@@27| |l#1@@26| |l#2@@25| |l#3@@25| |l#4@@25| |l#5@@25| |l#6@@16|) j@@27) (ite  (and (>= j@@27 |l#0@@27|) (< j@@27 |l#1@@26|)) (ite (< j@@27 |l#2@@25|) (|Select__T@[Int]Int_| |l#3@@25| j@@27) (|Select__T@[Int]Int_| |l#4@@25| (+ j@@27 |l#5@@25|))) |l#6@@16|))
 :qid |DesignatedDealerbpl.63:20|
 :skolemid |495|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#29| |l#0@@27| |l#1@@26| |l#2@@25| |l#3@@25| |l#4@@25| |l#5@@25| |l#6@@16|) j@@27))
)))
(assert (forall ((|l#0@@28| |T@[$EventRep]Int|) (|l#1@@27| |T@[$EventRep]Int|) (v@@45 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#30| |l#0@@28| |l#1@@27|) v@@45) (- (|Select__T@[$EventRep]Int_| |l#0@@28| v@@45) (|Select__T@[$EventRep]Int_| |l#1@@27| v@@45)))
 :qid |DesignatedDealerbpl.154:29|
 :skolemid |496|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#30| |l#0@@28| |l#1@@27|) v@@45))
)))
; Valid

