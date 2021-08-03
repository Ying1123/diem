(set-info :smt-lib-version 2.6)
(set-logic ALL)
(set-info :source |
Benchmarks used in the followin paper:
Big proof engines as little proof engines: new results on rewrite-based satisfiability procedure
Alessandro Armando, Maria Paola Bonacina, Silvio Ranise, Stephan Schulz. 
PDPAR'05
http://www.ai.dist.unige.it/pdpar05/


|)
(set-info :category "crafted")
(set-info :status unsat)

(declare-sort Element 0)
(declare-fun a_126 () (Seq Element))
(declare-fun a_127 () (Seq Element))
(declare-fun a_129 () (Seq Element))
(declare-fun a_130 () (Seq Element))
(declare-fun a_132 () (Seq Element))
(declare-fun a_134 () (Seq Element))
(declare-fun a_135 () (Seq Element))
(declare-fun a_136 () (Seq Element))
(declare-fun e_125 () Element)
(declare-fun e_128 () Element)
(declare-fun e_131 () Element)
(declare-fun e_133 () Element)
(declare-fun a1 () (Seq Element))
(declare-fun i0 () Int)
(declare-fun i1 () Int)
(declare-fun i2 () Int)
(assert (= a_126 (seq.update a1 i1 (seq.unit e_125))))
(assert (= a_127 (seq.update a_126 i1 (seq.unit e_125))))
(assert (= a_129 (seq.update a_127 i0 (seq.unit e_128))))
(assert (= a_130 (seq.update a_129 i0 (seq.unit e_128))))
(assert (= a_132 (seq.update a_130 i2 (seq.unit e_131))))
(assert (= a_134 (seq.update a_132 i0 (seq.unit e_133))))
(assert (= a_135 (seq.update a_130 i0 (seq.unit e_133))))
(assert (= a_136 (seq.update a_135 i2 (seq.unit e_131))))
(assert (= e_125 (seq.nth a1 i1)))
(assert (= e_128 (seq.nth a_127 i0)))
(assert (= e_131 (seq.nth a_130 i0)))
(assert (= e_133 (seq.nth a_130 i2)))
(assert (not (= a_134 a_136)))
(check-sat)
(exit)
