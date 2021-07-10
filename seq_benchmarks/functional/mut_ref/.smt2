(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-logic ALL_SUPPORTED)
; done setting options


(declare-datatypes ((T@$1_TestMutRef_R 0)) ((($1_TestMutRef_R (|$value#$1_TestMutRef_R| Int) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_T 0)) ((($1_TestMutRef_T (|$value#$1_TestMutRef_T| Int) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_V 0)) ((($1_TestMutRef_V (|$is#$1_TestMutRef_V| (Seq Int)) (|$ts#$1_TestMutRef_V| (Seq T@$1_TestMutRef_T)) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_N 0)) ((($1_TestMutRef_N (|$value#$1_TestMutRef_N| Int) (|$t#$1_TestMutRef_N| T@$1_TestMutRef_T) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_28102 0)) ((($Mutation_28102 (|l#$Mutation_28102| T@$Location) (|p#$Mutation_28102| (Seq Int)) (|v#$Mutation_28102| T@$1_TestMutRef_R) ) ) ))
(declare-datatypes ((T@$Mutation_23973 0)) ((($Mutation_23973 (|l#$Mutation_23973| T@$Location) (|p#$Mutation_23973| (Seq Int)) (|v#$Mutation_23973| T@$1_TestMutRef_V) ) ) ))
(declare-datatypes ((T@$Mutation_22996 0)) ((($Mutation_22996 (|l#$Mutation_22996| T@$Location) (|p#$Mutation_22996| (Seq Int)) (|v#$Mutation_22996| T@$1_TestMutRef_N) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_19785 0)) ((($Mutation_19785 (|l#$Mutation_19785| T@$Location) (|p#$Mutation_19785| (Seq Int)) (|v#$Mutation_19785| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_18478 0)) ((($Mutation_18478 (|l#$Mutation_18478| T@$Location) (|p#$Mutation_18478| (Seq Int)) (|v#$Mutation_18478| T@$1_TestMutRef_T) ) ) ))
(declare-datatypes ((T@$Mutation_17766 0)) ((($Mutation_17766 (|l#$Mutation_17766| T@$Location) (|p#$Mutation_17766| (Seq Int)) (|v#$Mutation_17766| (Seq T@$1_TestMutRef_T)) ) ) ))
(declare-datatypes ((T@$Range 0)) ((($Range (|lb#$Range| Int) (|ub#$Range| Int) ) ) ))
