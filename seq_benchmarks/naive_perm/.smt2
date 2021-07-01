(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-logic ALL_SUPPORTED)
; done setting options


(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_8514 0)) ((($Mutation_8514 (|l#$Mutation_8514| T@$Location) (|p#$Mutation_8514| (Seq Int)) (|v#$Mutation_8514| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Range 0)) ((($Range (|lb#$Range| Int) (|ub#$Range| Int) ) ) ))
