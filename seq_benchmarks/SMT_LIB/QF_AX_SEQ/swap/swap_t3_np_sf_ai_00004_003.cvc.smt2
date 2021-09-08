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
(declare-fun a_307 () (Seq Element))
(declare-fun a_308 () (Seq Element))
(declare-fun a_310 () (Seq Element))
(declare-fun a_312 () (Seq Element))
(declare-fun a_314 () (Seq Element))
(declare-fun a_315 () (Seq Element))
(declare-fun a_317 () (Seq Element))
(declare-fun a_319 () (Seq Element))
(declare-fun a_320 () (Seq Element))
(declare-fun a_321 () (Seq Element))
(declare-fun a_323 () (Seq Element))
(declare-fun a_324 () (Seq Element))
(declare-fun a_326 () (Seq Element))
(declare-fun a_328 () (Seq Element))
(declare-fun e_306 () Element)
(declare-fun e_309 () Element)
(declare-fun e_311 () Element)
(declare-fun e_313 () Element)
(declare-fun e_316 () Element)
(declare-fun e_318 () Element)
(declare-fun e_322 () Element)
(declare-fun e_325 () Element)
(declare-fun e_327 () Element)
(declare-fun a1 () (Seq Element))
(declare-fun i0 () Int)
(declare-fun i1 () Int)
(declare-fun i3 () Int)
(assert (= a_307 (seq.update a1 i3 (seq.unit e_306))))
(assert (= a_308 (seq.update a_307 i3 (seq.unit e_306))))
(assert (= a_310 (seq.update a_308 i0 (seq.unit e_309))))
(assert (= a_312 (seq.update a_310 i3 (seq.unit e_311))))
(assert (= a_314 (seq.update a_312 i3 (seq.unit e_313))))
(assert (= a_315 (seq.update a_314 i3 (seq.unit e_313))))
(assert (= a_317 (seq.update a_315 i0 (seq.unit e_316))))
(assert (= a_319 (seq.update a_317 i1 (seq.unit e_318))))
(assert (= a_320 (seq.update a_308 i3 (seq.unit e_311))))
(assert (= a_321 (seq.update a_320 i0 (seq.unit e_309))))
(assert (= a_323 (seq.update a_321 i3 (seq.unit e_322))))
(assert (= a_324 (seq.update a_323 i3 (seq.unit e_322))))
(assert (= a_326 (seq.update a_324 i1 (seq.unit e_325))))
(assert (= a_328 (seq.update a_326 i0 (seq.unit e_327))))
(assert (= e_306 (seq.nth a1 i3)))
(assert (= e_309 (seq.nth a_308 i3)))
(assert (= e_311 (seq.nth a_308 i0)))
(assert (= e_313 (seq.nth a_312 i3)))
(assert (= e_316 (seq.nth a_315 i1)))
(assert (= e_318 (seq.nth a_315 i0)))
(assert (= e_322 (seq.nth a_321 i3)))
(assert (= e_325 (seq.nth a_324 i0)))
(assert (= e_327 (seq.nth a_324 i1)))
(assert (not (= a_319 a_328)))
(check-sat)
(exit)