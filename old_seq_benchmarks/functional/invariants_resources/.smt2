(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-logic ALL_SUPPORTED)
; done setting options


(declare-sort |T@#0| 0)
(declare-datatypes ((|T@$42_TestInvariants_R'#0'| 0)) (((|$42_TestInvariants_R'#0'| (|$x#$42_TestInvariants_R'#0'| Int) (|$t#$42_TestInvariants_R'#0'| |T@#0|) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestInvariants_R'#0'| 0)
(declare-datatypes ((T@$Memory_8680 0)) ((($Memory_8680 (|domain#$Memory_8680| |T@[Int]Bool|) (|contents#$Memory_8680| |T@[Int]$42_TestInvariants_R'#0'|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_6987 0)) ((($Mutation_6987 (|l#$Mutation_6987| T@$Location) (|p#$Mutation_6987| (Seq Int)) (|v#$Mutation_6987| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Range 0)) ((($Range (|lb#$Range| Int) (|ub#$Range| Int) ) ) ))
