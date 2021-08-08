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
(declare-fun a_3 () (Array Index Element))
(declare-fun a_5 () (Array Index Element))
(declare-fun a_7 () (Array Index Element))
(declare-fun a_9 () (Array Index Element))
(declare-fun e_0 () Element)
(declare-fun e_10 () Element)
(declare-fun e_2 () Element)
(declare-fun e_4 () Element)
(declare-fun e_6 () Element)
(declare-fun e_8 () Element)
(declare-fun a1 () (Array Index Element))
(declare-fun a2 () (Array Index Element))
(declare-fun i1 () Index)
(declare-fun i2 () Index)
(declare-fun i3 () Index)
(assert (= a_1 (store a1 i1 e_0)))
(assert (= a_11 (store a_7 i3 e_10)))
(assert (= a_3 (store a2 i1 e_2)))
(assert (= a_5 (store a_1 i2 e_4)))
(assert (= a_7 (store a_3 i2 e_6)))
(assert (= a_9 (store a_5 i1 e_8)))
(assert (= e_0 (select a2 i1)))
(assert (= e_10 (select a_5 i3)))
(assert (= e_2 (select a1 i1)))
(assert (= e_4 (select a_3 i2)))
(assert (= e_6 (select a_1 i2)))
(assert (= e_8 (select a_7 i3)))
(assert (= a_9 a_11))
(assert (not (= a1 a2)))
(check-sat)
(exit)
