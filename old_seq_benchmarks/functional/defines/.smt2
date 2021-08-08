(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-logic ALL_SUPPORTED)
; done setting options


(declare-datatypes ((T@$42_TestDefines_R 0)) ((($42_TestDefines_R (|$x#$42_TestDefines_R| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestDefines_R| 0)
(declare-datatypes ((T@$Memory_9032 0)) ((($Memory_9032 (|domain#$Memory_9032| |T@[Int]Bool|) (|contents#$Memory_9032| |T@[Int]$42_TestDefines_R|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_7419 0)) ((($Mutation_7419 (|l#$Mutation_7419| T@$Location) (|p#$Mutation_7419| (Seq Int)) (|v#$Mutation_7419| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Range 0)) ((($Range (|lb#$Range| Int) (|ub#$Range| Int) ) ) ))
