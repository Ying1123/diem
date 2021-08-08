(set-info :smt-lib-version 2.6)
(set-logic QF_AX)
(set-info :source |
Benchmarks used in the followin paper:
Big proof engines as little proof engines: new results on rewrite-based satisfiability procedure
Alessandro Armando, Maria Paola Bonacina, Silvio Ranise, Stephan Schulz. 
PDPAR'05
http://www.ai.dist.unige.it/pdpar05/


|)
(set-info :category "crafted")
(set-info :status unsat)
(declare-sort Index 0)
(declare-sort Element 0)
(declare-fun a_1 () (Array Index Element))
(declare-fun a_10 () (Array Index Element))
(declare-fun a_12 () (Array Index Element))
(declare-fun a_14 () (Array Index Element))
(declare-fun a_16 () (Array Index Element))
(declare-fun a_18 () (Array Index Element))
(declare-fun a_2 () (Array Index Element))
(declare-fun a_20 () (Array Index Element))
(declare-fun a_22 () (Array Index Element))
(declare-fun a_23 () (Array Index Element))
(declare-fun a_24 () (Array Index Element))
(declare-fun a_26 () (Array Index Element))
(declare-fun a_28 () (Array Index Element))
(declare-fun a_30 () (Array Index Element))
(declare-fun a_32 () (Array Index Element))
(declare-fun a_34 () (Array Index Element))
(declare-fun a_36 () (Array Index Element))
(declare-fun a_38 () (Array Index Element))
(declare-fun a_4 () (Array Index Element))
(declare-fun a_40 () (Array Index Element))
(declare-fun a_6 () (Array Index Element))
(declare-fun a_8 () (Array Index Element))
(declare-fun e_0 () Element)
(declare-fun e_11 () Element)
(declare-fun e_13 () Element)
(declare-fun e_15 () Element)
(declare-fun e_17 () Element)
(declare-fun e_19 () Element)
(declare-fun e_21 () Element)
(declare-fun e_25 () Element)
(declare-fun e_27 () Element)
(declare-fun e_29 () Element)
(declare-fun e_3 () Element)
(declare-fun e_31 () Element)
(declare-fun e_33 () Element)
(declare-fun e_35 () Element)
(declare-fun e_37 () Element)
(declare-fun e_39 () Element)
(declare-fun e_5 () Element)
(declare-fun e_7 () Element)
(declare-fun e_9 () Element)
(declare-fun a1 () (Array Index Element))
(declare-fun i0 () Index)
(declare-fun i1 () Index)
(declare-fun i2 () Index)
(declare-fun i3 () Index)
(declare-fun i4 () Index)
(declare-fun i5 () Index)
(assert (= a_1 (store a1 i1 e_0)))
(assert (= a_10 (store a_8 i2 e_9)))
(assert (= a_12 (store a_10 i3 e_11)))
(assert (= a_14 (store a_12 i1 e_13)))
(assert (= a_16 (store a_14 i2 e_15)))
(assert (= a_18 (store a_16 i4 e_17)))
(assert (= a_2 (store a_1 i1 e_0)))
(assert (= a_20 (store a_18 i0 e_19)))
(assert (= a_22 (store a_20 i1 e_21)))
(assert (= a_23 (store a_2 i2 e_5)))
(assert (= a_24 (store a_23 i5 e_3)))
(assert (= a_26 (store a_24 i4 e_25)))
(assert (= a_28 (store a_26 i2 e_27)))
(assert (= a_30 (store a_28 i1 e_29)))
(assert (= a_32 (store a_30 i3 e_31)))
(assert (= a_34 (store a_32 i2 e_33)))
(assert (= a_36 (store a_34 i4 e_35)))
(assert (= a_38 (store a_36 i0 e_37)))
(assert (= a_4 (store a_2 i5 e_3)))
(assert (= a_40 (store a_38 i1 e_39)))
(assert (= a_6 (store a_4 i2 e_5)))
(assert (= a_8 (store a_6 i4 e_7)))
(assert (= e_0 (select a1 i1)))
(assert (= e_11 (select a_10 i1)))
(assert (= e_13 (select a_10 i3)))
(assert (= e_15 (select a_14 i4)))
(assert (= e_17 (select a_14 i2)))
(assert (= e_19 (select a_18 i1)))
(assert (= e_21 (select a_18 i0)))
(assert (= e_25 (select a_24 i2)))
(assert (= e_27 (select a_24 i4)))
(assert (= e_29 (select a_28 i3)))
(assert (= e_3 (select a_2 i2)))
(assert (= e_31 (select a_28 i1)))
(assert (= e_33 (select a_32 i4)))
(assert (= e_35 (select a_32 i2)))
(assert (= e_37 (select a_36 i1)))
(assert (= e_39 (select a_36 i0)))
(assert (= e_5 (select a_2 i5)))
(assert (= e_7 (select a_6 i2)))
(assert (= e_9 (select a_6 i4)))
(assert (not (= a_22 a_40)))
(check-sat)
(exit)
