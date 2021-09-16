(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :strings-exp true)
(set-option :strings-seq-update eager)
(set-option :pre-skolem-quant true)
(set-option :no-dt-share-sel true)
(set-option :ee-mode central)
(set-logic ALL)
; done setting options


(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_28893 0)) ((($Memory_28893 (|domain#$Memory_28893| |T@[Int]Bool|) (|contents#$Memory_28893| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((T@$1_RecoveryAddress_RecoveryAddress 0)) ((($1_RecoveryAddress_RecoveryAddress (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-sort |T@[Int]$1_RecoveryAddress_RecoveryAddress| 0)
(declare-datatypes ((T@$Memory_32984 0)) ((($Memory_32984 (|domain#$Memory_32984| |T@[Int]Bool|) (|contents#$Memory_32984| |T@[Int]$1_RecoveryAddress_RecoveryAddress|) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (Seq Int)) (|$base_url#$1_DualAttestation_Credential| (Seq Int)) (|$compliance_public_key#$1_DualAttestation_Credential| (Seq Int)) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_37536 0)) ((($Memory_37536 (|domain#$Memory_37536| |T@[Int]Bool|) (|contents#$Memory_37536| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_32262 0)) ((($Memory_32262 (|domain#$Memory_32262| |T@[Int]Bool|) (|contents#$Memory_32262| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_32198 0)) ((($Memory_32198 (|domain#$Memory_32198| |T@[Int]Bool|) (|contents#$Memory_32198| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'#0'| 0)) (((|$1_AccountLimits_Window'#0'| (|$window_start#$1_AccountLimits_Window'#0'| Int) (|$window_inflow#$1_AccountLimits_Window'#0'| Int) (|$window_outflow#$1_AccountLimits_Window'#0'| Int) (|$tracked_balance#$1_AccountLimits_Window'#0'| Int) (|$limit_address#$1_AccountLimits_Window'#0'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'#0'| 0)
(declare-datatypes ((T@$Memory_31990 0)) ((($Memory_31990 (|domain#$Memory_31990| |T@[Int]Bool|) (|contents#$Memory_31990| |T@[Int]$1_AccountLimits_Window'#0'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'#0'| 0)) (((|$1_AccountLimits_LimitsDefinition'#0'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'#0'| 0)
(declare-datatypes ((T@$Memory_31703 0)) ((($Memory_31703 (|domain#$Memory_31703| |T@[Int]Bool|) (|contents#$Memory_31703| |T@[Int]$1_AccountLimits_LimitsDefinition'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_37711 0)) ((($Memory_37711 (|domain#$Memory_37711| |T@[Int]Bool|) (|contents#$Memory_37711| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_37651 0)) ((($Memory_37651 (|domain#$Memory_37651| |T@[Int]Bool|) (|contents#$Memory_37651| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| (Seq Int)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_30984 0)) ((($Memory_30984 (|domain#$Memory_30984| |T@[Int]Bool|) (|contents#$Memory_30984| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_30700 0)) ((($Memory_30700 (|domain#$Memory_30700| |T@[Int]Bool|) (|contents#$Memory_30700| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_30373 0)) ((($Memory_30373 (|domain#$Memory_30373| |T@[Int]Bool|) (|contents#$Memory_30373| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_30251 0)) ((($Memory_30251 (|domain#$Memory_30251| |T@[Int]Bool|) (|contents#$Memory_30251| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_ComplianceKeyRotationEvent 0)) ((($1_DualAttestation_ComplianceKeyRotationEvent (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| (Seq Int)) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_BaseUrlRotationEvent 0)) ((($1_DualAttestation_BaseUrlRotationEvent (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| (Seq Int)) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| T@$1_DualAttestation_BaseUrlRotationEvent) ) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| T@$1_DualAttestation_ComplianceKeyRotationEvent) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_20373 0)) (((Multiset_20373 (|v#Multiset_20373| |T@[$EventRep]Int|) (|l#Multiset_20373| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_20373| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_20373|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_36874 0)) ((($Mutation_36874 (|l#$Mutation_36874| T@$Location) (|p#$Mutation_36874| (Seq Int)) (|v#$Mutation_36874| T@$1_VASP_ParentVASP) ) ) ))
(declare-datatypes ((T@$Mutation_29524 0)) ((($Mutation_29524 (|l#$Mutation_29524| T@$Location) (|p#$Mutation_29524| (Seq Int)) (|v#$Mutation_29524| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_5649 0)) ((($Mutation_5649 (|l#$Mutation_5649| T@$Location) (|p#$Mutation_5649| (Seq Int)) (|v#$Mutation_5649| Int) ) ) ))
(declare-datatypes ((T@$Mutation_26143 0)) ((($Mutation_26143 (|l#$Mutation_26143| T@$Location) (|p#$Mutation_26143| (Seq Int)) (|v#$Mutation_26143| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_24853 0)) ((($Mutation_24853 (|l#$Mutation_24853| T@$Location) (|p#$Mutation_24853| (Seq Int)) (|v#$Mutation_24853| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_24107 0)) ((($Mutation_24107 (|l#$Mutation_24107| T@$Location) (|p#$Mutation_24107| (Seq Int)) (|v#$Mutation_24107| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((T@$Mutation_22665 0)) ((($Mutation_22665 (|l#$Mutation_22665| T@$Location) (|p#$Mutation_22665| (Seq Int)) (|v#$Mutation_22665| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_21919 0)) ((($Mutation_21919 (|l#$Mutation_21919| T@$Location) (|p#$Mutation_21919| (Seq Int)) (|v#$Mutation_21919| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
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
(declare-fun |$IsValid'vec'$1_ValidatorConfig_Config''| ((Seq T@$1_ValidatorConfig_Config)) Bool)
(declare-fun |$IsValid'$1_ValidatorConfig_Config'| (T@$1_ValidatorConfig_Config) Bool)
(declare-fun |$IndexOfVec'$1_ValidatorConfig_Config'| ((Seq T@$1_ValidatorConfig_Config) T@$1_ValidatorConfig_Config) Int)
(declare-fun |$IsValid'vec'address''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'address'| ((Seq Int) Int) Int)
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_20373_| (|T@[$1_Event_EventHandle]Multiset_20373| T@$1_Event_EventHandle) T@Multiset_20373)
(declare-fun |Select__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep) Int)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (T@$1_Event_EventHandle) Bool)
(declare-fun |$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| (T@$1_DiemTimestamp_CurrentTimeMicroseconds) Bool)
(declare-fun |$IsValid'$1_Roles_RoleId'| (T@$1_Roles_RoleId) Bool)
(declare-fun |$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| (T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) Bool)
(declare-fun |$IsValid'$1_Option_Option'address''| (|T@$1_Option_Option'address'|) Bool)
(declare-fun |$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|T@$1_Option_Option'$1_ValidatorConfig_Config'|) Bool)
(declare-fun |$IsValid'$1_ValidatorConfig_ValidatorConfig'| (T@$1_ValidatorConfig_ValidatorConfig) Bool)
(declare-fun |$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|T@$1_Diem_Diem'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|T@$1_Diem_Diem'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_AccountLimits_LimitsDefinition'#0''| (|T@$1_AccountLimits_LimitsDefinition'#0'|) Bool)
(declare-fun |$IsValid'$1_AccountLimits_Window'#0''| (|T@$1_AccountLimits_Window'#0'|) Bool)
(declare-fun |$IsValid'$1_XUS_XUS'| (T@$1_XUS_XUS) Bool)
(declare-fun |$IsValid'$1_XDX_XDX'| (T@$1_XDX_XDX) Bool)
(declare-fun |$IsValid'$1_VASP_ChildVASP'| (T@$1_VASP_ChildVASP) Bool)
(declare-fun |$IsValid'$1_VASP_ParentVASP'| (T@$1_VASP_ParentVASP) Bool)
(declare-fun |$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| (T@$1_DualAttestation_BaseUrlRotationEvent) Bool)
(declare-fun |$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| (T@$1_DualAttestation_ComplianceKeyRotationEvent) Bool)
(declare-fun |$IsValid'$1_DualAttestation_Credential'| (T@$1_DualAttestation_Credential) Bool)
(declare-fun |$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| (|T@$1_DiemAccount_Balance'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| (|T@$1_DiemAccount_Balance'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_RecoveryAddress_RecoveryAddress'| (T@$1_RecoveryAddress_RecoveryAddress) Bool)
(declare-fun ReverseVec_5502 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_18298 ((Seq T@$1_ValidatorConfig_Config)) (Seq T@$1_ValidatorConfig_Config))
(declare-fun ReverseVec_18101 ((Seq T@$1_DiemAccount_KeyRotationCapability)) (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_20373| |T@[$1_Event_EventHandle]Multiset_20373|) |T@[$1_Event_EventHandle]Multiset_20373|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |VASPbpl.165:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |VASPbpl.169:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |VASPbpl.173:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |VASPbpl.177:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |VASPbpl.181:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |VASPbpl.191:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |VASPbpl.457:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |VASPbpl.466:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (seq.nth v@@4 i@@0)))
 :qid |VASPbpl.595:13|
 :skolemid |15|
))))
 :qid |VASPbpl.593:62|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@4))
)))
(assert (forall ((v@@5 (Seq T@$1_DiemAccount_KeyRotationCapability)) (e T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@1 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |VASPbpl.600:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |VASPbpl.608:17|
 :skolemid |18|
)))))
 :qid |VASPbpl.604:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq T@$1_ValidatorConfig_Config)) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$1_ValidatorConfig_Config'| (seq.nth v@@6 i@@3)))
 :qid |VASPbpl.775:13|
 :skolemid |20|
))))
 :qid |VASPbpl.773:51|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@6))
)))
(assert (forall ((v@@7 (Seq T@$1_ValidatorConfig_Config)) (e@@0 T@$1_ValidatorConfig_Config) ) (! (let ((i@@4 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |VASPbpl.780:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |VASPbpl.788:17|
 :skolemid |23|
)))))
 :qid |VASPbpl.784:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'address'| (seq.nth v@@8 i@@6)))
 :qid |VASPbpl.955:13|
 :skolemid |25|
))))
 :qid |VASPbpl.953:33|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'address''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'address'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |VASPbpl.960:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |VASPbpl.968:17|
 :skolemid |28|
)))))
 :qid |VASPbpl.964:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'address'| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) (|$IsValid'u8'| (seq.nth v@@10 i@@9)))
 :qid |VASPbpl.1135:13|
 :skolemid |30|
))))
 :qid |VASPbpl.1133:28|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'u8''| v@@10))
)))
(assert (forall ((v@@11 (Seq Int)) (e@@2 Int) ) (! (let ((i@@10 (|$IndexOfVec'u8'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |VASPbpl.1140:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |VASPbpl.1148:17|
 :skolemid |33|
)))))
 :qid |VASPbpl.1144:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'u8'| v@@11 e@@2))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |VASPbpl.1321:15|
 :skolemid |35|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |VASPbpl.1337:15|
 :skolemid |36|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |VASPbpl.1408:15|
 :skolemid |37|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |VASPbpl.1411:15|
 :skolemid |38|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_20373_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_20373| stream) 0) (forall ((v@@12 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_20373| stream) v@@12) 0)
 :qid |VASPbpl.134:13|
 :skolemid |2|
))))
 :qid |VASPbpl.1472:13|
 :skolemid |39|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h) true)
 :qid |VASPbpl.1513:82|
 :skolemid |41|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h))
)))
(assert (forall ((v1@@1 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@1 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (= v1@@1 v2@@1) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@1) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@1)))
 :qid |VASPbpl.1519:15|
 :skolemid |42|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@1) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@1))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@0) true)
 :qid |VASPbpl.1569:88|
 :skolemid |43|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@0))
)))
(assert (forall ((v1@@2 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@2 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (= v1@@2 v2@@2) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@2) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@2)))
 :qid |VASPbpl.1575:15|
 :skolemid |44|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@2) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@2))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |VASPbpl.1644:61|
 :skolemid |45|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |VASPbpl.1703:36|
 :skolemid |46|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |VASPbpl.1722:71|
 :skolemid |47|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@2) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@2)))
 :qid |VASPbpl.1746:46|
 :skolemid |48|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@3)))
 :qid |VASPbpl.1759:64|
 :skolemid |49|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3))
)))
(assert (forall ((s@@4 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@4)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@4)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@4))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@4))))
 :qid |VASPbpl.1788:55|
 :skolemid |50|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@4))
)))
(assert (forall ((s@@5 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@5)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@5)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@5))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@5))))
 :qid |VASPbpl.1810:46|
 :skolemid |51|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@5))
)))
(assert (forall ((s@@6 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@6) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@6)))
 :qid |VASPbpl.1825:45|
 :skolemid |52|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@6))
)))
(assert (forall ((s@@7 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@7) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@7)))
 :qid |VASPbpl.1838:45|
 :skolemid |53|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@7))
)))
(assert (forall ((s@@8 |T@$1_AccountLimits_LimitsDefinition'#0'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'#0''| s@@8)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| s@@8)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| s@@8))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| s@@8))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| s@@8))))
 :qid |VASPbpl.1860:58|
 :skolemid |54|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'#0''| s@@8))
)))
(assert (forall ((s@@9 |T@$1_AccountLimits_Window'#0'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'#0''| s@@9)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'#0'| s@@9)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'#0'| s@@9))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'#0'| s@@9))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'#0'| s@@9))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'#0'| s@@9))))
 :qid |VASPbpl.1889:48|
 :skolemid |55|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'#0''| s@@9))
)))
(assert (forall ((s@@10 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@10) true)
 :qid |VASPbpl.1939:31|
 :skolemid |56|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@10))
)))
(assert (forall ((s@@11 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@11) true)
 :qid |VASPbpl.1952:31|
 :skolemid |57|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@11))
)))
(assert (forall ((s@@12 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@12) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@12)))
 :qid |VASPbpl.1995:38|
 :skolemid |58|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@12))
)))
(assert (forall ((s@@13 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@13) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@13)))
 :qid |VASPbpl.2009:39|
 :skolemid |59|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@13))
)))
(assert (forall ((s@@14 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@14)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@14)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@14))))
 :qid |VASPbpl.4232:60|
 :skolemid |165|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@14))
)))
(assert (forall ((s@@15 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@15)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@15)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@15))))
 :qid |VASPbpl.4249:66|
 :skolemid |166|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@15))
)))
(assert (forall ((s@@16 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@16)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@16)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@16))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@16))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@16))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@16))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@16))))
 :qid |VASPbpl.4278:50|
 :skolemid |167|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@16))
)))
(assert (forall ((s@@17 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@17) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@17)))
 :qid |VASPbpl.4297:55|
 :skolemid |168|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@17))
)))
(assert (forall ((s@@18 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@18) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@18)))
 :qid |VASPbpl.4311:55|
 :skolemid |169|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@18))
)))
(assert (forall ((s@@19 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@19) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@19)))
 :qid |VASPbpl.4325:57|
 :skolemid |170|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@19))
)))
(assert (forall ((s@@20 T@$1_RecoveryAddress_RecoveryAddress) ) (! (= (|$IsValid'$1_RecoveryAddress_RecoveryAddress'| s@@20) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| s@@20)))
 :qid |VASPbpl.4343:55|
 :skolemid |171|
 :pattern ( (|$IsValid'$1_RecoveryAddress_RecoveryAddress'| s@@20))
)))
(assert (forall ((v@@13 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_5502 v@@13)))
 (and (= (seq.len r@@0) (seq.len v@@13)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len r@@0))) (= (seq.nth r@@0 i@@12) (seq.nth v@@13 (- (- (seq.len v@@13) i@@12) 1))))
 :qid |VASPbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@12))
))))
 :qid |VASPbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_5502 v@@13))
)))
(assert (forall ((v@@14 (Seq T@$1_ValidatorConfig_Config)) ) (! (let ((r@@1 (ReverseVec_18298 v@@14)))
 (and (= (seq.len r@@1) (seq.len v@@14)) (forall ((i@@13 Int) ) (!  (=> (and (>= i@@13 0) (< i@@13 (seq.len r@@1))) (= (seq.nth r@@1 i@@13) (seq.nth v@@14 (- (- (seq.len v@@14) i@@13) 1))))
 :qid |VASPbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@13))
))))
 :qid |VASPbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_18298 v@@14))
)))
(assert (forall ((v@@15 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (let ((r@@2 (ReverseVec_18101 v@@15)))
 (and (= (seq.len r@@2) (seq.len v@@15)) (forall ((i@@14 Int) ) (!  (=> (and (>= i@@14 0) (< i@@14 (seq.len r@@2))) (= (seq.nth r@@2 i@@14) (seq.nth v@@15 (- (- (seq.len v@@15) i@@14) 1))))
 :qid |VASPbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@2 i@@14))
))))
 :qid |VASPbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_18101 v@@15))
)))
(assert (forall ((|l#0| Bool) (i@@15 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@15) |l#0|)
 :qid |VASPbpl.250:54|
 :skolemid |172|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@15))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_20373|) (|l#1| |T@[$1_Event_EventHandle]Multiset_20373|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_20373_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_20373| (|Select__T@[$1_Event_EventHandle]Multiset_20373_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_20373| (|Select__T@[$1_Event_EventHandle]Multiset_20373_| |l#1| handle@@0))))
(Multiset_20373 (|lambda#3| (|v#Multiset_20373| (|Select__T@[$1_Event_EventHandle]Multiset_20373_| |l#0@@0| handle@@0)) (|v#Multiset_20373| (|Select__T@[$1_Event_EventHandle]Multiset_20373_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |VASPbpl.1482:13|
 :skolemid |173|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_20373_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@16 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@16) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@16) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@16)))
 :qid |VASPbpl.129:29|
 :skolemid |174|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@16))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |inline$$1_AccountLimits_has_window_published'#0'$0$$t1@1| () Bool)
(declare-fun $1_VASP_ChildVASP_$memory () T@$Memory_32198)
(declare-fun $t1 () Int)
(declare-fun |$1_AccountLimits_Window'#0'_$memory| () T@$Memory_31990)
(declare-fun $t2 () Bool)
(declare-fun $1_VASP_ParentVASP_$memory () T@$Memory_32262)
(declare-fun _$t0 () Int)
(declare-fun |Select__T@[Int]$1_VASP_ChildVASP_| (|T@[Int]$1_VASP_ChildVASP| Int) T@$1_VASP_ChildVASP)
(declare-fun |$1_AccountLimits_LimitsDefinition'#0'_$memory| () T@$Memory_31703)
(declare-fun |Select__T@[Int]$1_AccountLimits_Window'#0'_| (|T@[Int]$1_AccountLimits_Window'#0'| Int) |T@$1_AccountLimits_Window'#0'|)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_30373)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun $1_RecoveryAddress_RecoveryAddress_$memory () T@$Memory_32984)
(declare-fun |Select__T@[Int]$1_VASP_ParentVASP_| (|T@[Int]$1_VASP_ParentVASP| Int) T@$1_VASP_ParentVASP)
(declare-fun $es () T@$EventStore)
; Valid
(declare-fun _$t0@@0 () Int)
(declare-fun $t1@0 () Bool)
(push 1)
(set-info :boogie-vc-id $1_VASP_is_child$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 52652) (let ((anon0$1_correct@@0  (=> (forall ((child_addr@@0 Int) ) (!  (=> (|$IsValid'address'| child_addr@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_32198| $1_VASP_ChildVASP_$memory) child_addr@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_32262| $1_VASP_ParentVASP_$memory) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_32198| $1_VASP_ChildVASP_$memory) child_addr@@0)))))
 :qid |VASPbpl.2169:20|
 :skolemid |70|
)) (=> (and (forall ((addr@@3 Int) ) (!  (=> (|$IsValid'address'| addr@@3) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_32984| $1_RecoveryAddress_RecoveryAddress_$memory) addr@@3) (or (|Select__T@[Int]Bool_| (|domain#$Memory_32262| $1_VASP_ParentVASP_$memory) addr@@3) (|Select__T@[Int]Bool_| (|domain#$Memory_32198| $1_VASP_ChildVASP_$memory) addr@@3))))
 :qid |VASPbpl.2173:20|
 :skolemid |71|
)) (|$IsValid'address'| _$t0@@0)) (=> (and (and (forall (($a_0@@2 Int) ) (! (let (($rsc@@2 (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_32198| $1_VASP_ChildVASP_$memory) $a_0@@2)))
(|$IsValid'$1_VASP_ChildVASP'| $rsc@@2))
 :qid |VASPbpl.2180:20|
 :skolemid |72|
 :pattern ( (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_32198| $1_VASP_ChildVASP_$memory) $a_0@@2))
)) (= _$t0@@0 _$t0@@0)) (and (= $t1@0 (|Select__T@[Int]Bool_| (|domain#$Memory_32198| $1_VASP_ChildVASP_$memory) _$t0@@0)) (= $t1@0 $t1@0))) (and (=> (= (ControlFlow 0 45028) (- 0 52812)) (not false)) (=> (not false) (and (=> (= (ControlFlow 0 45028) (- 0 52819)) (= $t1@0 (|Select__T@[Int]Bool_| (|domain#$Memory_32198| $1_VASP_ChildVASP_$memory) _$t0@@0))) (=> (= $t1@0 (|Select__T@[Int]Bool_| (|domain#$Memory_32198| $1_VASP_ChildVASP_$memory) _$t0@@0)) (and (=> (= (ControlFlow 0 45028) (- 0 52830)) (forall ((a@@0 Int) ) (!  (=> (|$IsValid'address'| a@@0) (= (|Select__T@[Int]Bool_| (|domain#$Memory_32198| $1_VASP_ChildVASP_$memory) a@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_32198| $1_VASP_ChildVASP_$memory) a@@0)))
 :qid |VASPbpl.2217:15|
 :skolemid |73|
))) (=> (forall ((a@@1 Int) ) (!  (=> (|$IsValid'address'| a@@1) (= (|Select__T@[Int]Bool_| (|domain#$Memory_32198| $1_VASP_ChildVASP_$memory) a@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_32198| $1_VASP_ChildVASP_$memory) a@@1)))
 :qid |VASPbpl.2217:15|
 :skolemid |73|
)) (=> (= (ControlFlow 0 45028) (- 0 52855)) (forall ((parent Int) ) (!  (=> (|$IsValid'address'| parent) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_32262| $1_VASP_ParentVASP_$memory) parent) (= (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_32262| $1_VASP_ParentVASP_$memory) parent)) (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_32262| $1_VASP_ParentVASP_$memory) parent)))))
 :qid |VASPbpl.2222:15|
 :skolemid |74|
))))))))))))))
(let ((inline$$InitEventStore$0$anon0_correct@@0  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@2 T@$1_Event_EventHandle) ) (! (let ((stream@@1 (|Select__T@[$1_Event_EventHandle]Multiset_20373_| (|streams#$EventStore| $es) handle@@2)))
 (and (= (|l#Multiset_20373| stream@@1) 0) (forall ((v@@18 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_20373| stream@@1) v@@18) 0)
 :qid |VASPbpl.134:13|
 :skolemid |2|
))))
 :qid |VASPbpl.1472:13|
 :skolemid |39|
))) (= (ControlFlow 0 44826) 45028)) anon0$1_correct@@0)))
(let ((anon0_correct@@0  (=> (= (ControlFlow 0 52652) 44826) inline$$InitEventStore$0$anon0_correct@@0)))
anon0_correct@@0))))
))
(check-sat)
(pop 1)
; Valid
