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
(set-info :status sat)
(declare-sort Index 0)
(declare-sort Element 0)
(declare-fun a_1 () (Array Index Element))
(declare-fun a_11 () (Array Index Element))
(declare-fun a_13 () (Array Index Element))
(declare-fun a_15 () (Array Index Element))
(declare-fun a_17 () (Array Index Element))
(declare-fun a_18 () (Array Index Element))
(declare-fun a_19 () (Array Index Element))
(declare-fun a_20 () (Array Index Element))
(declare-fun a_22 () (Array Index Element))
(declare-fun a_24 () (Array Index Element))
(declare-fun a_26 () (Array Index Element))
(declare-fun a_28 () (Array Index Element))
(declare-fun a_3 () (Array Index Element))
(declare-fun a_30 () (Array Index Element))
(declare-fun a_32 () (Array Index Element))
(declare-fun a_34 () (Array Index Element))
(declare-fun a_36 () (Array Index Element))
(declare-fun a_5 () (Array Index Element))
(declare-fun a_7 () (Array Index Element))
(declare-fun a_9 () (Array Index Element))
(declare-fun e_0 () Element)
(declare-fun e_10 () Element)
(declare-fun e_12 () Element)
(declare-fun e_14 () Element)
(declare-fun e_16 () Element)
(declare-fun e_2 () Element)
(declare-fun e_21 () Element)
(declare-fun e_23 () Element)
(declare-fun e_25 () Element)
(declare-fun e_27 () Element)
(declare-fun e_29 () Element)
(declare-fun e_31 () Element)
(declare-fun e_33 () Element)
(declare-fun e_35 () Element)
(declare-fun e_4 () Element)
(declare-fun e_6 () Element)
(declare-fun e_8 () Element)
(declare-fun a1 () (Array Index Element))
(declare-fun i0 () Index)
(declare-fun i1 () Index)
(declare-fun i2 () Index)
(declare-fun i3 () Index)
(declare-fun i4 () Index)
(assert (= a_1 (store a1 i4 e_0)))
(assert (= a_11 (store a_9 i2 e_10)))
(assert (= a_13 (store a_11 i1 e_12)))
(assert (= a_15 (store a_13 i3 e_14)))
(assert (= a_17 (store a_15 i0 e_16)))
(assert (= a_18 (store a_17 i0 e_16)))
(assert (= a_19 (store a1 i2 e_2)))
(assert (= a_20 (store a_19 i4 e_0)))
(assert (= a_22 (store a_20 i3 e_21)))
(assert (= a_24 (store a_22 i1 e_23)))
(assert (= a_26 (store a_24 i3 e_25)))
(assert (= a_28 (store a_26 i2 e_27)))
(assert (= a_3 (store a_1 i2 e_2)))
(assert (= a_30 (store a_28 i3 e_29)))
(assert (= a_32 (store a_30 i1 e_31)))
(assert (= a_34 (store a_32 i0 e_33)))
(assert (= a_36 (store a_34 i1 e_35)))
(assert (= a_5 (store a_3 i1 e_4)))
(assert (= a_7 (store a_5 i3 e_6)))
(assert (= a_9 (store a_7 i3 e_8)))
(assert (= e_0 (select a1 i2)))
(assert (= e_10 (select a_7 i3)))
(assert (= e_12 (select a_11 i3)))
(assert (= e_14 (select a_11 i1)))
(assert (= e_16 (select a_15 i0)))
(assert (= e_2 (select a1 i4)))
(assert (= e_21 (select a_20 i1)))
(assert (= e_23 (select a_20 i3)))
(assert (= e_25 (select a_24 i2)))
(assert (= e_27 (select a_24 i3)))
(assert (= e_29 (select a_28 i1)))
(assert (= e_31 (select a_28 i3)))
(assert (= e_33 (select a_32 i1)))
(assert (= e_35 (select a_32 i0)))
(assert (= e_4 (select a_3 i3)))
(assert (= e_6 (select a_3 i1)))
(assert (= e_8 (select a_7 i2)))
(assert (not (= a_18 a_36)))
(check-sat)
(exit)
