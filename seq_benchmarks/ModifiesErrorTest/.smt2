(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-logic ALL_SUPPORTED)
; done setting options


(declare-datatypes ((T@$0_B_T 0)) ((($0_B_T (|$x#$0_B_T| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$0_B_T| 0)
(declare-datatypes ((T@$Memory_11916 0)) ((($Memory_11916 (|domain#$Memory_11916| |T@[Int]Bool|) (|contents#$Memory_11916| |T@[Int]$0_B_T|) ) ) ))
(declare-datatypes ((T@$0_A_S 0)) ((($0_A_S (|$x#$0_A_S| Int) ) ) ))
(declare-sort |T@[Int]$0_A_S| 0)
(declare-datatypes ((T@$Memory_10871 0)) ((($Memory_10871 (|domain#$Memory_10871| |T@[Int]Bool|) (|contents#$Memory_10871| |T@[Int]$0_A_S|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_13617 0)) ((($Mutation_13617 (|l#$Mutation_13617| T@$Location) (|p#$Mutation_13617| (Seq Int)) (|v#$Mutation_13617| T@$0_B_T) ) ) ))
(declare-datatypes ((T@$Mutation_10904 0)) ((($Mutation_10904 (|l#$Mutation_10904| T@$Location) (|p#$Mutation_10904| (Seq Int)) (|v#$Mutation_10904| T@$0_A_S) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_9232 0)) ((($Mutation_9232 (|l#$Mutation_9232| T@$Location) (|p#$Mutation_9232| (Seq Int)) (|v#$Mutation_9232| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Range 0)) ((($Range (|lb#$Range| Int) (|ub#$Range| Int) ) ) ))
