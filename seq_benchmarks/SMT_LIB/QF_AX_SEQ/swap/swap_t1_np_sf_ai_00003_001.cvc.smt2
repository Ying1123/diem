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
(declare-fun a_205 () (Seq Element))
(declare-fun a_207 () (Seq Element))
(declare-fun a_209 () (Seq Element))
(declare-fun a_210 () (Seq Element))
(declare-fun a_212 () (Seq Element))
(declare-fun a_214 () (Seq Element))
(declare-fun a_215 () (Seq Element))
(declare-fun a_216 () (Seq Element))
(declare-fun e_204 () Element)
(declare-fun e_206 () Element)
(declare-fun e_208 () Element)
(declare-fun e_211 () Element)
(declare-fun e_213 () Element)
(declare-fun a1 () (Seq Element))
(declare-fun i0 () Int)
(declare-fun i1 () Int)
(declare-fun i2 () Int)
(assert (= a_205 (seq.update a1 i1 (seq.unit e_204))))
(assert (= a_207 (seq.update a_205 i2 (seq.unit e_206))))
(assert (= a_209 (seq.update a_207 i0 (seq.unit e_208))))
(assert (= a_210 (seq.update a_209 i0 (seq.unit e_208))))
(assert (= a_212 (seq.update a_210 i0 (seq.unit e_211))))
(assert (= a_214 (seq.update a_212 i1 (seq.unit e_213))))
(assert (= a_215 (seq.update a_210 i1 (seq.unit e_213))))
(assert (= a_216 (seq.update a_215 i0 (seq.unit e_211))))
(assert (= e_204 (seq.nth a1 i2)))
(assert (= e_206 (seq.nth a1 i1)))
(assert (= e_208 (seq.nth a_207 i0)))
(assert (= e_211 (seq.nth a_210 i1)))
(assert (= e_213 (seq.nth a_210 i0)))
(assert (not (= a_214 a_216)))
(check-sat)
(exit)
