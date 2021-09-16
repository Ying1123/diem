(set-option :print-success false)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
(set-info :smt-lib-version 2.6)
(set-logic ALL)
; done setting options


(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_21355 0)) ((($Memory_21355 (|domain#$Memory_21355| |T@[Int]Bool|) (|contents#$Memory_21355| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_23261 0)) ((($Memory_23261 (|domain#$Memory_23261| |T@[Int]Bool|) (|contents#$Memory_23261| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_23228 0)) ((($Memory_23228 (|domain#$Memory_23228| |T@[Int]Bool|) (|contents#$Memory_23228| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (Seq Int)) (|$base_url#$1_DualAttestation_Credential| (Seq Int)) (|$compliance_public_key#$1_DualAttestation_Credential| (Seq Int)) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_23985 0)) ((($Memory_23985 (|domain#$Memory_23985| |T@[Int]Bool|) (|contents#$Memory_23985| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_24160 0)) ((($Memory_24160 (|domain#$Memory_24160| |T@[Int]Bool|) (|contents#$Memory_24160| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_24100 0)) ((($Memory_24100 (|domain#$Memory_24100| |T@[Int]Bool|) (|contents#$Memory_24100| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| (Seq Int)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_23195 0)) ((($Memory_23195 (|domain#$Memory_23195| |T@[Int]Bool|) (|contents#$Memory_23195| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_23648 0)) ((($Memory_23648 (|domain#$Memory_23648| |T@[Int]Bool|) (|contents#$Memory_23648| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_22822 0)) ((($Memory_22822 (|domain#$Memory_22822| |T@[Int]Bool|) (|contents#$Memory_22822| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_22700 0)) ((($Memory_22700 (|domain#$Memory_22700| |T@[Int]Bool|) (|contents#$Memory_22700| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_ComplianceKeyRotationEvent 0)) ((($1_DualAttestation_ComplianceKeyRotationEvent (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| (Seq Int)) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_BaseUrlRotationEvent 0)) ((($1_DualAttestation_BaseUrlRotationEvent (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| (Seq Int)) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| T@$1_DualAttestation_BaseUrlRotationEvent) ) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| T@$1_DualAttestation_ComplianceKeyRotationEvent) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_15010 0)) (((Multiset_15010 (|v#Multiset_15010| |T@[$EventRep]Int|) (|l#Multiset_15010| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_15010| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_15010|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_21986 0)) ((($Mutation_21986 (|l#$Mutation_21986| T@$Location) (|p#$Mutation_21986| (Seq Int)) (|v#$Mutation_21986| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_4544 0)) ((($Mutation_4544 (|l#$Mutation_4544| T@$Location) (|p#$Mutation_4544| (Seq Int)) (|v#$Mutation_4544| Int) ) ) ))
(declare-datatypes ((T@$Mutation_18605 0)) ((($Mutation_18605 (|l#$Mutation_18605| T@$Location) (|p#$Mutation_18605| (Seq Int)) (|v#$Mutation_18605| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_17277 0)) ((($Mutation_17277 (|l#$Mutation_17277| T@$Location) (|p#$Mutation_17277| (Seq Int)) (|v#$Mutation_17277| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_16531 0)) ((($Mutation_16531 (|l#$Mutation_16531| T@$Location) (|p#$Mutation_16531| (Seq Int)) (|v#$Mutation_16531| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
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
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_15010_| (|T@[$1_Event_EventHandle]Multiset_15010| T@$1_Event_EventHandle) T@Multiset_15010)
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
(declare-fun |$IsValid'$1_XUS_XUS'| (T@$1_XUS_XUS) Bool)
(declare-fun |$IsValid'$1_XDX_XDX'| (T@$1_XDX_XDX) Bool)
(declare-fun |$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| (T@$1_DualAttestation_BaseUrlRotationEvent) Bool)
(declare-fun |$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| (T@$1_DualAttestation_ComplianceKeyRotationEvent) Bool)
(declare-fun |$IsValid'$1_DualAttestation_Credential'| (T@$1_DualAttestation_Credential) Bool)
(declare-fun |$IsValid'$1_DualAttestation_Limit'| (T@$1_DualAttestation_Limit) Bool)
(declare-fun |$IsValid'$1_AccountFreezing_FreezingBit'| (T@$1_AccountFreezing_FreezingBit) Bool)
(declare-fun |$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| (|T@$1_DiemAccount_Balance'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| (|T@$1_DiemAccount_Balance'$1_XDX_XDX'|) Bool)
(declare-fun ReverseVec_4397 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_13333 ((Seq T@$1_ValidatorConfig_Config)) (Seq T@$1_ValidatorConfig_Config))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_15010| |T@[$1_Event_EventHandle]Multiset_15010|) |T@[$1_Event_EventHandle]Multiset_15010|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |ValidatorOperatorConfigbpl.165:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |ValidatorOperatorConfigbpl.169:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |ValidatorOperatorConfigbpl.173:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |ValidatorOperatorConfigbpl.177:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |ValidatorOperatorConfigbpl.181:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |ValidatorOperatorConfigbpl.191:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |ValidatorOperatorConfigbpl.457:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |ValidatorOperatorConfigbpl.466:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq T@$1_ValidatorConfig_Config)) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'$1_ValidatorConfig_Config'| (seq.nth v@@4 i@@0)))
 :qid |ValidatorOperatorConfigbpl.595:13|
 :skolemid |15|
))))
 :qid |ValidatorOperatorConfigbpl.593:51|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@4))
)))
(assert (forall ((v@@5 (Seq T@$1_ValidatorConfig_Config)) (e T@$1_ValidatorConfig_Config) ) (! (let ((i@@1 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |ValidatorOperatorConfigbpl.600:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |ValidatorOperatorConfigbpl.608:17|
 :skolemid |18|
)))))
 :qid |ValidatorOperatorConfigbpl.604:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'address'| (seq.nth v@@6 i@@3)))
 :qid |ValidatorOperatorConfigbpl.775:13|
 :skolemid |20|
))))
 :qid |ValidatorOperatorConfigbpl.773:33|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'address''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'address'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |ValidatorOperatorConfigbpl.780:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |ValidatorOperatorConfigbpl.788:17|
 :skolemid |23|
)))))
 :qid |ValidatorOperatorConfigbpl.784:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'address'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |ValidatorOperatorConfigbpl.955:13|
 :skolemid |25|
))))
 :qid |ValidatorOperatorConfigbpl.953:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |ValidatorOperatorConfigbpl.960:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |ValidatorOperatorConfigbpl.968:17|
 :skolemid |28|
)))))
 :qid |ValidatorOperatorConfigbpl.964:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |ValidatorOperatorConfigbpl.1141:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |ValidatorOperatorConfigbpl.1157:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |ValidatorOperatorConfigbpl.1228:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |ValidatorOperatorConfigbpl.1231:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_15010_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_15010| stream) 0) (forall ((v@@10 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_15010| stream) v@@10) 0)
 :qid |ValidatorOperatorConfigbpl.134:13|
 :skolemid |2|
))))
 :qid |ValidatorOperatorConfigbpl.1292:13|
 :skolemid |34|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h) true)
 :qid |ValidatorOperatorConfigbpl.1333:82|
 :skolemid |36|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h))
)))
(assert (forall ((v1@@1 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@1 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (= v1@@1 v2@@1) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@1) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@1)))
 :qid |ValidatorOperatorConfigbpl.1339:15|
 :skolemid |37|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@1) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@1))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@0) true)
 :qid |ValidatorOperatorConfigbpl.1389:88|
 :skolemid |38|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@0))
)))
(assert (forall ((v1@@2 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@2 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (= v1@@2 v2@@2) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@2) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@2)))
 :qid |ValidatorOperatorConfigbpl.1395:15|
 :skolemid |39|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@2) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@2))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |ValidatorOperatorConfigbpl.1461:61|
 :skolemid |40|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |ValidatorOperatorConfigbpl.1525:36|
 :skolemid |42|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |ValidatorOperatorConfigbpl.1928:71|
 :skolemid |78|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@2) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@2)))
 :qid |ValidatorOperatorConfigbpl.2641:46|
 :skolemid |104|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@3)))
 :qid |ValidatorOperatorConfigbpl.2654:64|
 :skolemid |105|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3))
)))
(assert (forall ((s@@4 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@4)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@4)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@4))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@4))))
 :qid |ValidatorOperatorConfigbpl.2683:55|
 :skolemid |106|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@4))
)))
(assert (forall ((s@@5 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@5)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@5)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@5))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@5))))
 :qid |ValidatorOperatorConfigbpl.2705:46|
 :skolemid |107|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@5))
)))
(assert (forall ((s@@6 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@6) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@6)))
 :qid |ValidatorOperatorConfigbpl.2720:45|
 :skolemid |108|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@6))
)))
(assert (forall ((s@@7 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@7) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@7)))
 :qid |ValidatorOperatorConfigbpl.2733:45|
 :skolemid |109|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@7))
)))
(assert (forall ((s@@8 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@8) true)
 :qid |ValidatorOperatorConfigbpl.2746:31|
 :skolemid |110|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@8))
)))
(assert (forall ((s@@9 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@9) true)
 :qid |ValidatorOperatorConfigbpl.2759:31|
 :skolemid |111|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@9))
)))
(assert (forall ((s@@10 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@10)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@10)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@10))))
 :qid |ValidatorOperatorConfigbpl.2785:60|
 :skolemid |112|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@10))
)))
(assert (forall ((s@@11 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@11)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@11)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@11))))
 :qid |ValidatorOperatorConfigbpl.2802:66|
 :skolemid |113|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@11))
)))
(assert (forall ((s@@12 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@12)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@12)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@12))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@12))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@12))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@12))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@12))))
 :qid |ValidatorOperatorConfigbpl.2831:50|
 :skolemid |114|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@12))
)))
(assert (forall ((s@@13 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@13) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@13)))
 :qid |ValidatorOperatorConfigbpl.2850:45|
 :skolemid |115|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@13))
)))
(assert (forall ((s@@14 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@14) true)
 :qid |ValidatorOperatorConfigbpl.2864:51|
 :skolemid |116|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@14))
)))
(assert (forall ((s@@15 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@15) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@15)))
 :qid |ValidatorOperatorConfigbpl.2878:55|
 :skolemid |117|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@15))
)))
(assert (forall ((s@@16 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@16) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@16)))
 :qid |ValidatorOperatorConfigbpl.2892:55|
 :skolemid |118|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@16))
)))
(assert (forall ((v@@11 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4397 v@@11)))
 (and (= (seq.len r@@0) (seq.len v@@11)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@11 (- (- (seq.len v@@11) i@@9) 1))))
 :qid |ValidatorOperatorConfigbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |ValidatorOperatorConfigbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4397 v@@11))
)))
(assert (forall ((v@@12 (Seq T@$1_ValidatorConfig_Config)) ) (! (let ((r@@1 (ReverseVec_13333 v@@12)))
 (and (= (seq.len r@@1) (seq.len v@@12)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@12 (- (- (seq.len v@@12) i@@10) 1))))
 :qid |ValidatorOperatorConfigbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |ValidatorOperatorConfigbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_13333 v@@12))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |ValidatorOperatorConfigbpl.250:54|
 :skolemid |119|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_15010|) (|l#1| |T@[$1_Event_EventHandle]Multiset_15010|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_15010_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_15010| (|Select__T@[$1_Event_EventHandle]Multiset_15010_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_15010| (|Select__T@[$1_Event_EventHandle]Multiset_15010_| |l#1| handle@@0))))
(Multiset_15010 (|lambda#3| (|v#Multiset_15010| (|Select__T@[$1_Event_EventHandle]Multiset_15010_| |l#0@@0| handle@@0)) (|v#Multiset_15010| (|Select__T@[$1_Event_EventHandle]Multiset_15010_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |ValidatorOperatorConfigbpl.1302:13|
 :skolemid |120|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_15010_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@13 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@13) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@13) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@13)))
 :qid |ValidatorOperatorConfigbpl.129:29|
 :skolemid |121|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@13))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_22822)
(declare-fun $1_Roles_RoleId_$memory@1 () T@$Memory_22822)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory () T@$Memory_23648)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory () T@$Memory_23195)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|T@[Int]$1_ValidatorConfig_ValidatorConfig| Int) T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun $1_Signer_is_txn_signer_addr (Int) Bool)
(declare-fun $1_DualAttestation_Limit_$memory () T@$Memory_23228)
(declare-fun |Select__T@[Int]$1_DualAttestation_Limit_| (|T@[Int]$1_DualAttestation_Limit| Int) T@$1_DualAttestation_Limit)
(declare-fun $1_DualAttestation_Credential_$memory () T@$Memory_23985)
(declare-fun $1_AccountFreezing_FreezingBit_$memory () T@$Memory_23261)
(declare-fun |Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|T@[Int]$1_AccountFreezing_FreezingBit| Int) T@$1_AccountFreezing_FreezingBit)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory| () T@$Memory_24100)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory| () T@$Memory_24160)
(declare-fun _$t0 () T@$signer)
(declare-fun _$t1 () Int)
(declare-fun $t10@0 () Int)
(declare-fun $abort_code@1 () Int)
(declare-fun $1_Roles_RoleId_$memory@0 () T@$Memory_22822)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int T@$1_Roles_RoleId) |T@[Int]$1_Roles_RoleId|)
(assert (forall ( ( ?x0 |T@[Int]$1_Roles_RoleId|) ( ?x1 Int) ( ?x2 T@$1_Roles_RoleId)) (! (= (|Select__T@[Int]$1_Roles_RoleId_| (|Store__T@[Int]$1_Roles_RoleId_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Roles_RoleId|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_Roles_RoleId)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Roles_RoleId_| (|Store__T@[Int]$1_Roles_RoleId_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Roles_RoleId_| ?x0 ?y1))) :weight 0)))
(declare-fun $t11@0 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0 () Int)
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun $1_Roles_RoleId_$modifies () |T@[Int]Bool|)
(declare-fun $t9 () Int)
(declare-fun $t6@0 () Bool)
(declare-fun $1_Signer_is_txn_signer (T@$signer) Bool)
(declare-fun $t4 () Int)
(declare-fun $t5 () Int)
(declare-fun $es () T@$EventStore)
; Valid
(declare-fun $abort_flag@0@@0 () Bool)
(declare-fun $t8@0 () (Seq Int))
(declare-fun $t7@1 () T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig)
(declare-fun _$t0@@0 () Int)
(declare-fun |Select__T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig_| (|T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| Int) T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig)
(declare-fun $t4@0 () Int)
(declare-fun $abort_code@1@@0 () Int)
(declare-fun $t7 () T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig)
(declare-fun $t7@0 () T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig)
(declare-fun $abort_code@0@@0 () Int)
(declare-fun inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$$t1@1 () Bool)
(declare-fun $t6 () Int)
; Valid
(declare-fun _$t0@@1 () Int)
(declare-fun $t1@0 () Bool)
; Valid
(declare-fun $abort_flag@0@@1 () Bool)
(declare-fun $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory@1 () T@$Memory_23648)
(declare-fun $t5@@0 () Int)
(declare-fun _$t1@@0 () T@$signer)
(declare-fun $t6@@0 () Int)
(declare-fun $t7@@0 () Int)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_22700)
(declare-fun $t8 () Int)
(declare-fun $t9@@0 () Int)
(declare-fun _$t0@@2 () T@$signer)
(declare-fun $t11@0@@0 () Int)
(declare-fun $abort_code@1@@1 () Int)
(declare-fun $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory@0 () T@$Memory_23648)
(declare-fun |Store__T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig_| (|T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| Int T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|)
(assert (forall ( ( ?x0 |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ( ?x1 Int) ( ?x2 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig)) (! (= (|Select__T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig_| (|Store__T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig_| (|Store__T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig_| ?x0 ?y1))) :weight 0)))
(declare-fun $t21@0 () T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig)
(declare-fun $abort_code@0@@1 () Int)
(declare-fun inline$$Not$0$dst@1@@0 () Bool)
(declare-fun _$t2 () (Seq Int))
(declare-fun $t20 () Int)
(declare-fun inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$$t1@1@@0 () Bool)
(declare-fun $t15 () Bool)
(declare-fun $t14 () Int)
(declare-fun $t11 () Int)
(declare-fun $t13 () Bool)
(declare-fun $t12 () Int)
(declare-fun $t10 () Bool)
(declare-fun $t16 () Int)
(declare-fun |Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| Int) T@$1_DiemTimestamp_CurrentTimeMicroseconds)
(push 1)
(set-info :boogie-vc-id $1_ValidatorOperatorConfig_publish$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 37456) (let ((anon24_Else_correct  (=> (not $abort_flag@0@@1) (and (=> (= (ControlFlow 0 34813) (- 0 39021)) (forall ((addr@@48 Int) ) (!  (=> (|$IsValid'address'| addr@@48) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_23648| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory@1) addr@@48) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr@@48) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr@@48)) 4))))
 :qid |ValidatorOperatorConfigbpl.2525:15|
 :skolemid |102|
))) (=> (forall ((addr@@49 Int) ) (!  (=> (|$IsValid'address'| addr@@49) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_23648| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory@1) addr@@49) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr@@49) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr@@49)) 4))))
 :qid |ValidatorOperatorConfigbpl.2525:15|
 :skolemid |102|
)) (and (=> (= (ControlFlow 0 34813) (- 0 39046)) (forall ((addr@@50 Int) ) (!  (=> (|$IsValid'address'| addr@@50) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_23648| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@50) (|Select__T@[Int]Bool_| (|domain#$Memory_23648| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory@1) addr@@50)))
 :qid |ValidatorOperatorConfigbpl.2531:15|
 :skolemid |103|
))) (=> (forall ((addr@@51 Int) ) (!  (=> (|$IsValid'address'| addr@@51) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_23648| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@51) (|Select__T@[Int]Bool_| (|domain#$Memory_23648| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory@1) addr@@51)))
 :qid |ValidatorOperatorConfigbpl.2531:15|
 :skolemid |103|
)) (and (=> (= (ControlFlow 0 34813) (- 0 39073)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) $t5@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) $t5@@0))) (and (=> (= (ControlFlow 0 34813) (- 0 39085)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) $t5@@0)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) $t5@@0)) 0))) (and (=> (= (ControlFlow 0 34813) (- 0 39103)) (not (not (= (|$addr#$signer| _$t1@@0) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t1@@0) 173345816))) (and (=> (= (ControlFlow 0 34813) (- 0 39117)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) $t6@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) $t6@@0))) (and (=> (= (ControlFlow 0 34813) (- 0 39129)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) $t6@@0)) 4)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) $t6@@0)) 4))) (and (=> (= (ControlFlow 0 34813) (- 0 39147)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_23648| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) $t7@@0))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_23648| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) $t7@@0)) (and (=> (= (ControlFlow 0 34813) (- 0 39157)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_22700| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_22700| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 34813) (- 0 39167)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) $t8)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) $t8))) (and (=> (= (ControlFlow 0 34813) (- 0 39179)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) $t8)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) $t8)) 0))) (and (=> (= (ControlFlow 0 34813) (- 0 39197)) (not (not (= (|$addr#$signer| _$t1@@0) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t1@@0) 173345816))) (and (=> (= (ControlFlow 0 34813) (- 0 39211)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) $t9@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) $t9@@0))) (and (=> (= (ControlFlow 0 34813) (- 0 39223)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) $t9@@0)) 4)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) $t9@@0)) 4))) (=> (= (ControlFlow 0 34813) (- 0 39241)) (|Select__T@[Int]Bool_| (|domain#$Memory_23648| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory@1) (|$addr#$signer| _$t0@@2))))))))))))))))))))))))))))))))))
(let ((L3_correct@@1  (and (=> (= (ControlFlow 0 34539) (- 0 38666)) (or (or (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) $t5@@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) $t5@@0)) 0))) (not (= (|$addr#$signer| _$t1@@0) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) $t6@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) $t6@@0)) 4))) (|Select__T@[Int]Bool_| (|domain#$Memory_23648| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) $t7@@0)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_22700| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) $t8))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) $t8)) 0))) (not (= (|$addr#$signer| _$t1@@0) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) $t9@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) $t9@@0)) 4)))) (=> (or (or (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) $t5@@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) $t5@@0)) 0))) (not (= (|$addr#$signer| _$t1@@0) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) $t6@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) $t6@@0)) 4))) (|Select__T@[Int]Bool_| (|domain#$Memory_23648| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) $t7@@0)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_22700| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) $t8))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) $t8)) 0))) (not (= (|$addr#$signer| _$t1@@0) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) $t9@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) $t9@@0)) 4))) (=> (= (ControlFlow 0 34539) (- 0 38796)) (or (or (or (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) $t5@@0)) (= 5 $t11@0@@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) $t5@@0)) 0)) (= 3 $t11@0@@0))) (and (not (= (|$addr#$signer| _$t1@@0) 173345816)) (= 2 $t11@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) $t6@@0)) (= 5 $t11@0@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) $t6@@0)) 4)) (= 3 $t11@0@@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_23648| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) $t7@@0) (= 6 $t11@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_22700| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t11@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) $t8)) (= 5 $t11@0@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) $t8)) 0)) (= 3 $t11@0@@0))) (and (not (= (|$addr#$signer| _$t1@@0) 173345816)) (= 2 $t11@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) $t9@@0)) (= 5 $t11@0@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) $t9@@0)) 4)) (= 3 $t11@0@@0))))))))
(let ((anon24_Then_correct  (=> (and (and $abort_flag@0@@1 (= $abort_code@1@@1 $abort_code@1@@1)) (and (= $t11@0@@0 $abort_code@1@@1) (= (ControlFlow 0 34827) 34539))) L3_correct@@1)))
(let ((anon23_Then$1_correct  (=> (= $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory@1 $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) (=> (and (= $abort_flag@0@@1 true) (= $abort_code@1@@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 34879) 34827) anon24_Then_correct) (=> (= (ControlFlow 0 34879) 34813) anon24_Else_correct))))))
(let ((anon23_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_23648| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) (|$addr#$signer| _$t0@@2)) (= (ControlFlow 0 34877) 34879)) anon23_Then$1_correct)))
(let ((anon23_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_23648| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) (|$addr#$signer| _$t0@@2))) (=> (and (and (= $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory@0 ($Memory_23648 (|Store__T@[Int]Bool_| (|domain#$Memory_23648| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) (|$addr#$signer| _$t0@@2) true) (|Store__T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig_| (|contents#$Memory_23648| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) (|$addr#$signer| _$t0@@2) $t21@0))) (= $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory@1 $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory@0)) (and (= $abort_flag@0@@1 false) (= $abort_code@1@@1 $abort_code@0@@1))) (and (=> (= (ControlFlow 0 34575) 34827) anon24_Then_correct) (=> (= (ControlFlow 0 34575) 34813) anon24_Else_correct))))))
(let ((anon22_Then_correct  (=> (and inline$$Not$0$dst@1@@0 (= $t21@0 ($1_ValidatorOperatorConfig_ValidatorOperatorConfig _$t2))) (and (=> (= (ControlFlow 0 34553) 34877) anon23_Then_correct) (=> (= (ControlFlow 0 34553) 34575) anon23_Else_correct)))))
(let ((anon22_Else_correct  (=> (and (and (not inline$$Not$0$dst@1@@0) (= $t20 $t20)) (and (= $t11@0@@0 $t20) (= (ControlFlow 0 34151) 34539))) L3_correct@@1)))
(let ((anon21_Else$1_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| $t20) (= $t20 6)) (and (= $t20 $t20) (= inline$$Not$0$dst@1@@0 inline$$Not$0$dst@1@@0))) (and (=> (= (ControlFlow 0 34135) 34553) anon22_Then_correct) (=> (= (ControlFlow 0 34135) 34151) anon22_Else_correct))))))
(let ((inline$$Not$0$anon0_correct@@0  (=> (and (= inline$$Not$0$dst@1@@0  (not inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$$t1@1@@0)) (= (ControlFlow 0 34095) 34135)) anon21_Else$1_correct)))
(let ((anon21_Else_correct  (=> (and (not false) (= (ControlFlow 0 34101) 34095)) inline$$Not$0$anon0_correct@@0)))
(let ((anon20_Then_correct  (=> $t15 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) $t14)) (= 5 $t11)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) $t14)) 4)) (= 3 $t11))) (= $t11 $t11)) (and (= $t11@0@@0 $t11) (= (ControlFlow 0 34945) 34539))) L3_correct@@1))))
(let ((anon19_Then_correct  (=> $t13 (=> (and (and (or (or (or (and (not (= (|$addr#$signer| _$t1@@0) 173345816)) (= 2 $t11)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) $t12)) (= 5 $t11))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) $t12)) 0)) (= 3 $t11))) (and (not (= (|$addr#$signer| _$t1@@0) 173345816)) (= 2 $t11))) (= $t11 $t11)) (and (= $t11@0@@0 $t11) (= (ControlFlow 0 35037) 34539))) L3_correct@@1))))
(let ((anon18_Then_correct  (=> $t10 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_22700| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t11)) (= $t11 $t11)) (and (= $t11@0@@0 $t11) (= (ControlFlow 0 35063) 34539))) L3_correct@@1))))
(let ((anon21_Then_correct true))
(let ((inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$anon0_correct@@0  (=> (= $t16 $t16) (=> (and (= inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$$t1@1@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_23648| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) $t16)) (= inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$$t1@1@@0 inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$$t1@1@@0)) (and (=> (= (ControlFlow 0 34051) 34893) anon21_Then_correct) (=> (= (ControlFlow 0 34051) 34101) anon21_Else_correct))))))
(let ((anon20_Else_correct  (=> (and (and (not $t15) (|$IsValid'address'| $t16)) (and (= $t16 (|$addr#$signer| _$t0@@2)) (= (ControlFlow 0 34057) 34051))) inline$$1_ValidatorOperatorConfig_has_validator_operator_config$0$anon0_correct@@0)))
(let ((anon19_Else_correct  (=> (not $t13) (=> (and (= $t14 (|$addr#$signer| _$t0@@2)) (= $t15  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) $t14)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) $t14)) 4))))) (and (=> (= (ControlFlow 0 33934) 34945) anon20_Then_correct) (=> (= (ControlFlow 0 33934) 34057) anon20_Else_correct))))))
(let ((anon18_Else_correct  (=> (not $t10) (=> (and (= $t12 (|$addr#$signer| _$t1@@0)) (= $t13  (or (or (or (not (= (|$addr#$signer| _$t1@@0) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) $t12))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) $t12)) 0))) (not (= (|$addr#$signer| _$t1@@0) 173345816))))) (and (=> (= (ControlFlow 0 33888) 35037) anon19_Then_correct) (=> (= (ControlFlow 0 33888) 33934) anon19_Else_correct))))))
(let ((anon0$1_correct@@2  (=> (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_22700| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_22700| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (forall ((addr@@52 Int) ) (!  (=> (|$IsValid'address'| addr@@52) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr@@52) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr@@52)) 0)) (= addr@@52 173345816)))
 :qid |ValidatorOperatorConfigbpl.2225:20|
 :skolemid |84|
))) (and (forall ((addr@@53 Int) ) (!  (=> (|$IsValid'address'| addr@@53) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr@@53) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr@@53)) 1)) (= addr@@53 186537453)))
 :qid |ValidatorOperatorConfigbpl.2229:20|
 :skolemid |85|
)) (forall ((addr@@54 Int) ) (!  (=> (|$IsValid'address'| addr@@54) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr@@54) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr@@54)) 0)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr@@54) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr@@54)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr@@54) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr@@54)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr@@54) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr@@54)) 2))))))
 :qid |ValidatorOperatorConfigbpl.2233:20|
 :skolemid |86|
)))) (=> (and (and (and (and (forall ((addr@@55 Int) ) (!  (=> (|$IsValid'address'| addr@@55) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr@@55) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr@@55)) 1)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr@@55) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr@@55)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr@@55) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr@@55)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr@@55) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr@@55)) 2))))))
 :qid |ValidatorOperatorConfigbpl.2237:20|
 :skolemid |87|
)) (forall ((addr@@56 Int) ) (!  (=> (|$IsValid'address'| addr@@56) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr@@56) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr@@56)) 3)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr@@56) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr@@56)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr@@56) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr@@56)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr@@56) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr@@56)) 2))))))
 :qid |ValidatorOperatorConfigbpl.2241:20|
 :skolemid |88|
))) (and (forall ((addr@@57 Int) ) (!  (=> (|$IsValid'address'| addr@@57) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr@@57) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr@@57)) 4)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr@@57) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr@@57)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr@@57) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr@@57)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr@@57) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr@@57)) 2))))))
 :qid |ValidatorOperatorConfigbpl.2245:20|
 :skolemid |89|
)) (forall ((addr@@58 Int) ) (!  (=> (|$IsValid'address'| addr@@58) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr@@58) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr@@58)) 2)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr@@58) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr@@58)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr@@58) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr@@58)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr@@58) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr@@58)) 2)))))
 :qid |ValidatorOperatorConfigbpl.2249:20|
 :skolemid |90|
)))) (and (and (forall ((addr@@59 Int) ) (!  (=> (|$IsValid'address'| addr@@59) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr@@59) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr@@59)) 5)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr@@59) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr@@59)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr@@59) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr@@59)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr@@59) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr@@59)) 2)))))
 :qid |ValidatorOperatorConfigbpl.2253:20|
 :skolemid |91|
)) (forall ((addr@@60 Int) ) (!  (=> (|$IsValid'address'| addr@@60) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr@@60) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr@@60)) 6)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr@@60) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr@@60)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr@@60) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr@@60)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr@@60) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr@@60)) 2)))))
 :qid |ValidatorOperatorConfigbpl.2257:20|
 :skolemid |92|
))) (and (forall ((addr@@61 Int) ) (!  (=> (|$IsValid'address'| addr@@61) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_23648| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@61) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr@@61) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr@@61)) 4))))
 :qid |ValidatorOperatorConfigbpl.2261:20|
 :skolemid |93|
)) (forall ((addr@@62 Int) ) (!  (=> (|$IsValid'address'| addr@@62) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_23195| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@62) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr@@62) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr@@62)) 3))))
 :qid |ValidatorOperatorConfigbpl.2265:20|
 :skolemid |94|
))))) (and (and (and (forall ((addr@@63 Int) ) (!  (=> (|$IsValid'address'| addr@@63) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_23195| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@63) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr@@63) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr@@63)) 3))))
 :qid |ValidatorOperatorConfigbpl.2269:20|
 :skolemid |95|
)) (forall ((addr@@64 Int) ) (!  (=> (|$IsValid'address'| addr@@64) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_23195| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@64) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_23195| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@64)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr@@64) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr@@64)) 3))))
 :qid |ValidatorOperatorConfigbpl.2273:20|
 :skolemid |96|
))) (and (forall ((addr1@@2 Int) ) (!  (=> (|$IsValid'address'| addr1@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_23985| $1_DualAttestation_Credential_$memory) addr1@@2) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr1@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr1@@2)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr1@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr1@@2)) 2)))))
 :qid |ValidatorOperatorConfigbpl.2277:20|
 :skolemid |97|
)) (forall ((addr@@65 Int) ) (!  (=> (|$IsValid'address'| addr@@65) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_24100| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@65) (|Select__T@[Int]Bool_| (|domain#$Memory_24160| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@65)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr@@65) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr@@65)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr@@65) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr@@65)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_22822| $1_Roles_RoleId_$memory) addr@@65) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) addr@@65)) 2)))))
 :qid |ValidatorOperatorConfigbpl.2281:20|
 :skolemid |98|
)))) (and (and (|$IsValid'address'| (|$addr#$signer| _$t0@@2)) ($1_Signer_is_txn_signer _$t0@@2)) ($1_Signer_is_txn_signer_addr (|$addr#$signer| _$t0@@2))))) (=> (and (and (and (and (and (|$IsValid'address'| (|$addr#$signer| _$t1@@0)) ($1_Signer_is_txn_signer _$t1@@0)) ($1_Signer_is_txn_signer_addr (|$addr#$signer| _$t1@@0))) (|$IsValid'vec'u8''| _$t2)) (and (and (forall (($a_0@@2 Int) ) (! (let (($rsc@@2 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_22700| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@2)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@2))
 :qid |ValidatorOperatorConfigbpl.2293:20|
 :skolemid |99|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_22700| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@2))
)) (forall (($a_0@@3 Int) ) (! (let (($rsc@@3 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) $a_0@@3)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@3))
 :qid |ValidatorOperatorConfigbpl.2297:20|
 :skolemid |100|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_22822| $1_Roles_RoleId_$memory) $a_0@@3))
))) (and (forall (($a_0@@4 Int) ) (! (let (($rsc@@4 (|Select__T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig_| (|contents#$Memory_23648| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) $a_0@@4)))
(|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| $rsc@@4))
 :qid |ValidatorOperatorConfigbpl.2301:20|
 :skolemid |101|
 :pattern ( (|Select__T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig_| (|contents#$Memory_23648| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) $a_0@@4))
)) (= $t5@@0 (|$addr#$signer| _$t1@@0))))) (and (and (and (= $t6@@0 (|$addr#$signer| _$t0@@2)) (= $t7@@0 (|$addr#$signer| _$t0@@2))) (and (= $t8 (|$addr#$signer| _$t1@@0)) (= $t9@@0 (|$addr#$signer| _$t0@@2)))) (and (and (= _$t0@@2 _$t0@@2) (= _$t1@@0 _$t1@@0)) (and (= _$t2 _$t2) (= $t10  (not (|Select__T@[Int]Bool_| (|domain#$Memory_22700| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))))) (and (=> (= (ControlFlow 0 33818) 35063) anon18_Then_correct) (=> (= (ControlFlow 0 33818) 33888) anon18_Else_correct)))))))
(let ((inline$$InitEventStore$0$anon0_correct@@2  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@4 T@$1_Event_EventHandle) ) (! (let ((stream@@3 (|Select__T@[$1_Event_EventHandle]Multiset_15010_| (|streams#$EventStore| $es) handle@@4)))
 (and (= (|l#Multiset_15010| stream@@3) 0) (forall ((v@@17 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_15010| stream@@3) v@@17) 0)
 :qid |ValidatorOperatorConfigbpl.134:13|
 :skolemid |2|
))))
 :qid |ValidatorOperatorConfigbpl.1292:13|
 :skolemid |34|
))) (= (ControlFlow 0 33229) 33818)) anon0$1_correct@@2)))
(let ((anon0_correct@@2  (=> (= (ControlFlow 0 37456) 33229) inline$$InitEventStore$0$anon0_correct@@2)))
anon0_correct@@2)))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
