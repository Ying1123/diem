(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-logic ALL_SUPPORTED)
; done setting options


(declare-datatypes ((T@$42_TestSome_R 0)) ((($42_TestSome_R (|$x#$42_TestSome_R| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestSome_R| 0)
(declare-datatypes ((T@$Memory_12474 0)) ((($Memory_12474 (|domain#$Memory_12474| |T@[Int]Bool|) (|contents#$Memory_12474| |T@[Int]$42_TestSome_R|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_9728 0)) ((($Mutation_9728 (|l#$Mutation_9728| T@$Location) (|p#$Mutation_9728| (Seq Int)) (|v#$Mutation_9728| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Range 0)) ((($Range (|lb#$Range| Int) (|ub#$Range| Int) ) ) ))
