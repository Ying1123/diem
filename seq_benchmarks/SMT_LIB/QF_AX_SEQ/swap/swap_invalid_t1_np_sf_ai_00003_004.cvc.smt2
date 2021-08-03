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
(set-info :status sat)

(declare-sort Element 0)
(declare-fun a_134 () (Seq Element))
(declare-fun a_135 () (Seq Element))
(declare-fun a_137 () (Seq Element))
(declare-fun a_138 () (Seq Element))
(declare-fun a_140 () (Seq Element))
(declare-fun a_142 () (Seq Element))
(declare-fun a_143 () (Seq Element))
(declare-fun a_144 () (Seq Element))
(declare-fun e_133 () Element)
(declare-fun e_136 () Element)
(declare-fun e_139 () Element)
(declare-fun e_141 () Element)
(declare-fun a1 () (Seq Element))
(declare-fun i0 () Int)
(declare-fun i1 () Int)
(declare-fun i2 () Int)
(assert (= a_134 (seq.update a1 i1 (seq.unit e_133))))
(assert (= a_135 (seq.update a_134 i1 (seq.unit e_133))))
(assert (= a_137 (seq.update a_135 i0 (seq.unit e_136))))
(assert (= a_138 (seq.update a_137 i0 (seq.unit e_136))))
(assert (= a_140 (seq.update a_138 i2 (seq.unit e_139))))
(assert (= a_142 (seq.update a_140 i0 (seq.unit e_141))))
(assert (= a_143 (seq.update a_138 i0 (seq.unit e_139))))
(assert (= a_144 (seq.update a_143 i0 (seq.unit e_139))))
(assert (= e_133 (seq.nth a1 i1)))
(assert (= e_136 (seq.nth a_135 i0)))
(assert (= e_139 (seq.nth a_138 i0)))
(assert (= e_141 (seq.nth a_138 i2)))
(assert (not (= a_142 a_144)))
(check-sat)
(exit)
