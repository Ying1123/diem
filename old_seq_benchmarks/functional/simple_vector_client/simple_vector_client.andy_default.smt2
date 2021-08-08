(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-logic ALL)
; done setting options


(declare-datatypes ((|T@$42_TestVector_T'#0'| 0)) (((|$42_TestVector_T'#0'| (|$v#$42_TestVector_T'#0'| (Seq |T@#0|)) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'u64'| 0)) (((|$42_TestVector_T'u64'| (|$v#$42_TestVector_T'u64'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_25431 0)) ((($Mutation_25431 (|l#$Mutation_25431| T@$Location) (|p#$Mutation_25431| (Seq Int)) (|v#$Mutation_25431| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_24067 0)) ((($Mutation_24067 (|l#$Mutation_24067| T@$Location) (|p#$Mutation_24067| (Seq Int)) (|v#$Mutation_24067| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23321 0)) ((($Mutation_23321 (|l#$Mutation_23321| T@$Location) (|p#$Mutation_23321| (Seq Int)) (|v#$Mutation_23321| (Seq |T@#0|)) ) ) ))
(declare-datatypes ((T@$Range 0)) ((($Range (|lb#$Range| Int) (|ub#$Range| Int) ) ) ))
