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
(declare-fun a_23 () (Seq Element))
(declare-fun a_25 () (Seq Element))
(declare-fun a_27 () (Seq Element))
(declare-fun a_28 () (Seq Element))
(declare-fun a_29 () (Seq Element))
(declare-fun a_30 () (Seq Element))
(declare-fun a_32 () (Seq Element))
(declare-fun a_34 () (Seq Element))
(declare-fun e_22 () Element)
(declare-fun e_24 () Element)
(declare-fun e_26 () Element)
(declare-fun e_31 () Element)
(declare-fun e_33 () Element)
(declare-fun a1 () (Seq Element))
(declare-fun i0 () Int)
(declare-fun i1 () Int)
(assert (= a_23 (seq.update a1 i0 (seq.unit e_22))))
(assert (= a_25 (seq.update a_23 i1 (seq.unit e_24))))
(assert (= a_27 (seq.update a_25 i1 (seq.unit e_26))))
(assert (= a_28 (seq.update a_27 i1 (seq.unit e_26))))
(assert (= a_29 (seq.update a1 i1 (seq.unit e_24))))
(assert (= a_30 (seq.update a_29 i0 (seq.unit e_22))))
(assert (= a_32 (seq.update a_30 i1 (seq.unit e_31))))
(assert (= a_34 (seq.update a_32 i0 (seq.unit e_33))))
(assert (= e_22 (seq.nth a1 i1)))
(assert (= e_24 (seq.nth a1 i0)))
(assert (= e_26 (seq.nth a_25 i1)))
(assert (= e_31 (seq.nth a_30 i0)))
(assert (= e_33 (seq.nth a_30 i1)))
(assert (not (= a_28 a_34)))
(check-sat)
(exit)
