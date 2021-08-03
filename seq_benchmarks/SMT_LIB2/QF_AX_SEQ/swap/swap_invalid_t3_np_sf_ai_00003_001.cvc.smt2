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
(declare-fun a_215 () (Seq Element))
(declare-fun a_217 () (Seq Element))
(declare-fun a_219 () (Seq Element))
(declare-fun a_220 () (Seq Element))
(declare-fun a_222 () (Seq Element))
(declare-fun a_224 () (Seq Element))
(declare-fun a_225 () (Seq Element))
(declare-fun a_226 () (Seq Element))
(declare-fun e_214 () Element)
(declare-fun e_216 () Element)
(declare-fun e_218 () Element)
(declare-fun e_221 () Element)
(declare-fun e_223 () Element)
(declare-fun a1 () (Seq Element))
(declare-fun i0 () Int)
(declare-fun i1 () Int)
(declare-fun i2 () Int)
(assert (= a_215 (seq.update a1 i1 (seq.unit e_214))))
(assert (= a_217 (seq.update a_215 i2 (seq.unit e_216))))
(assert (= a_219 (seq.update a_217 i0 (seq.unit e_218))))
(assert (= a_220 (seq.update a_219 i0 (seq.unit e_218))))
(assert (= a_222 (seq.update a_220 i0 (seq.unit e_221))))
(assert (= a_224 (seq.update a_222 i1 (seq.unit e_223))))
(assert (= a_225 (seq.update a_220 i1 (seq.unit e_221))))
(assert (= a_226 (seq.update a_225 i1 (seq.unit e_221))))
(assert (= e_214 (seq.nth a1 i2)))
(assert (= e_216 (seq.nth a1 i1)))
(assert (= e_218 (seq.nth a_217 i0)))
(assert (= e_221 (seq.nth a_220 i1)))
(assert (= e_223 (seq.nth a_220 i0)))
(assert (not (= a_224 a_226)))
(check-sat)
(exit)
