(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-logic ALL)
; done setting options


(declare-datatypes ((|T@$42_TestVector_T'#0'| 0)) (((|$42_TestVector_T'#0'| (|$v#$42_TestVector_T'#0'| (Seq |T@#0|)) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'u64'| 0)) (((|$42_TestVector_T'u64'| (|$v#$42_TestVector_T'u64'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_25510 0)) ((($Mutation_25510 (|l#$Mutation_25510| T@$Location) (|p#$Mutation_25510| (Seq Int)) (|v#$Mutation_25510| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_24146 0)) ((($Mutation_24146 (|l#$Mutation_24146| T@$Location) (|p#$Mutation_24146| (Seq Int)) (|v#$Mutation_24146| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23400 0)) ((($Mutation_23400 (|l#$Mutation_23400| T@$Location) (|p#$Mutation_23400| (Seq Int)) (|v#$Mutation_23400| (Seq |T@#0|)) ) ) ))
(declare-datatypes ((T@$Range 0)) ((($Range (|lb#$Range| Int) (|ub#$Range| Int) ) ) ))
