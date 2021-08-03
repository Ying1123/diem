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
(declare-fun a_126 () (Array Index Element))
(declare-fun a_127 () (Array Index Element))
(declare-fun a_129 () (Array Index Element))
(declare-fun a_130 () (Array Index Element))
(declare-fun a_132 () (Array Index Element))
(declare-fun a_134 () (Array Index Element))
(declare-fun a_135 () (Array Index Element))
(declare-fun a_136 () (Array Index Element))
(declare-fun e_125 () Element)
(declare-fun e_128 () Element)
(declare-fun e_131 () Element)
(declare-fun e_133 () Element)
(declare-fun a1 () (Array Index Element))
(declare-fun i0 () Index)
(declare-fun i1 () Index)
(declare-fun i2 () Index)
(assert (= a_126 (store a1 i1 e_125)))
(assert (= a_127 (store a_126 i1 e_125)))
(assert (= a_129 (store a_127 i0 e_128)))
(assert (= a_130 (store a_129 i0 e_128)))
(assert (= a_132 (store a_130 i2 e_131)))
(assert (= a_134 (store a_132 i0 e_133)))
(assert (= a_135 (store a_130 i0 e_133)))
(assert (= a_136 (store a_135 i2 e_131)))
(assert (= e_125 (select a1 i1)))
(assert (= e_128 (select a_127 i0)))
(assert (= e_131 (select a_130 i0)))
(assert (= e_133 (select a_130 i2)))
(assert (not (= a_134 a_136)))
(check-sat)
(exit)
