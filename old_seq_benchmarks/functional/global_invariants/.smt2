(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-logic ALL_SUPPORTED)
; done setting options


(declare-datatypes ((T@$42_TestGlobalInvariants_S 0)) ((($42_TestGlobalInvariants_S (|$x#$42_TestGlobalInvariants_S| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestGlobalInvariants_S| 0)
(declare-datatypes ((T@$Memory_10144 0)) ((($Memory_10144 (|domain#$Memory_10144| |T@[Int]Bool|) (|contents#$Memory_10144| |T@[Int]$42_TestGlobalInvariants_S|) ) ) ))
(declare-datatypes ((T@$42_TestGlobalInvariants_R 0)) ((($42_TestGlobalInvariants_R (|$x#$42_TestGlobalInvariants_R| Int) ) ) ))
(declare-sort |T@[Int]$42_TestGlobalInvariants_R| 0)
(declare-datatypes ((T@$Memory_9970 0)) ((($Memory_9970 (|domain#$Memory_9970| |T@[Int]Bool|) (|contents#$Memory_9970| |T@[Int]$42_TestGlobalInvariants_R|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_8384 0)) ((($Mutation_8384 (|l#$Mutation_8384| T@$Location) (|p#$Mutation_8384| (Seq Int)) (|v#$Mutation_8384| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Range 0)) ((($Range (|lb#$Range| Int) (|ub#$Range| Int) ) ) ))
