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
(declare-fun a_22 () (Seq Element))
(declare-fun a_24 () (Seq Element))
(declare-fun a_26 () (Seq Element))
(declare-fun a_27 () (Seq Element))
(declare-fun a_28 () (Seq Element))
(declare-fun a_29 () (Seq Element))
(declare-fun a_31 () (Seq Element))
(declare-fun a_32 () (Seq Element))
(declare-fun e_21 () Element)
(declare-fun e_23 () Element)
(declare-fun e_25 () Element)
(declare-fun e_30 () Element)
(declare-fun a1 () (Seq Element))
(declare-fun i0 () Int)
(declare-fun i1 () Int)
(assert (= a_22 (seq.update a1 i0 (seq.unit e_21))))
(assert (= a_24 (seq.update a_22 i1 (seq.unit e_23))))
(assert (= a_26 (seq.update a_24 i1 (seq.unit e_25))))
(assert (= a_27 (seq.update a_26 i1 (seq.unit e_25))))
(assert (= a_28 (seq.update a1 i1 (seq.unit e_23))))
(assert (= a_29 (seq.update a_28 i0 (seq.unit e_21))))
(assert (= a_31 (seq.update a_29 i1 (seq.unit e_30))))
(assert (= a_32 (seq.update a_31 i1 (seq.unit e_30))))
(assert (= e_21 (seq.nth a1 i1)))
(assert (= e_23 (seq.nth a1 i0)))
(assert (= e_25 (seq.nth a_24 i1)))
(assert (= e_30 (seq.nth a_29 i1)))
(assert (not (= a_27 a_32)))
(check-sat)
(exit)
