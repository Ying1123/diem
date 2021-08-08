(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-logic ALL_SUPPORTED)
; done setting options


(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_20318 0)) ((($Mutation_20318 (|l#$Mutation_20318| T@$Location) (|p#$Mutation_20318| (Seq Int)) (|v#$Mutation_20318| (Seq Int)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_19011 0)) ((($Mutation_19011 (|l#$Mutation_19011| T@$Location) (|p#$Mutation_19011| (Seq Int)) (|v#$Mutation_19011| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_18299 0)) ((($Mutation_18299 (|l#$Mutation_18299| T@$Location) (|p#$Mutation_18299| (Seq Int)) (|v#$Mutation_18299| (Seq |T@#0|)) ) ) ))
(declare-datatypes ((T@$Range 0)) ((($Range (|lb#$Range| Int) (|ub#$Range| Int) ) ) ))
