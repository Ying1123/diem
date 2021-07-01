(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-logic ALL_SUPPORTED)
; done setting options


(declare-datatypes ((T@$42_TestReferences_WithdrawalCapability 0)) ((($42_TestReferences_WithdrawalCapability (|$account_address#$42_TestReferences_WithdrawalCapability| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestReferences_WithdrawalCapability| 0)
(declare-datatypes ((T@$Memory_16503 0)) ((($Memory_16503 (|domain#$Memory_16503| |T@[Int]Bool|) (|contents#$Memory_16503| |T@[Int]$42_TestReferences_WithdrawalCapability|) ) ) ))
(declare-datatypes ((T@$42_TestReferences_T 0)) ((($42_TestReferences_T (|$a#$42_TestReferences_T| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_13758 0)) ((($Mutation_13758 (|l#$Mutation_13758| T@$Location) (|p#$Mutation_13758| (Seq Int)) (|v#$Mutation_13758| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_12451 0)) ((($Mutation_12451 (|l#$Mutation_12451| T@$Location) (|p#$Mutation_12451| (Seq Int)) (|v#$Mutation_12451| T@$42_TestReferences_T) ) ) ))
(declare-datatypes ((T@$Mutation_11739 0)) ((($Mutation_11739 (|l#$Mutation_11739| T@$Location) (|p#$Mutation_11739| (Seq Int)) (|v#$Mutation_11739| (Seq T@$42_TestReferences_T)) ) ) ))
(declare-datatypes ((T@$Range 0)) ((($Range (|lb#$Range| Int) (|ub#$Range| Int) ) ) ))
