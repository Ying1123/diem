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
(declare-fun a_34 () (Seq Element))
(declare-fun a_36 () (Seq Element))
(declare-fun a_38 () (Seq Element))
(declare-fun a_40 () (Seq Element))
(declare-fun a_41 () (Seq Element))
(declare-fun a_42 () (Seq Element))
(declare-fun a_44 () (Seq Element))
(declare-fun a_46 () (Seq Element))
(declare-fun e_33 () Element)
(declare-fun e_35 () Element)
(declare-fun e_37 () Element)
(declare-fun e_39 () Element)
(declare-fun e_43 () Element)
(declare-fun e_45 () Element)
(declare-fun a1 () (Seq Element))
(declare-fun i0 () Int)
(declare-fun i1 () Int)
(assert (= a_34 (seq.update a1 i0 (seq.unit e_33))))
(assert (= a_36 (seq.update a_34 i1 (seq.unit e_35))))
(assert (= a_38 (seq.update a_36 i1 (seq.unit e_37))))
(assert (= a_40 (seq.update a_38 i0 (seq.unit e_39))))
(assert (= a_41 (seq.update a1 i1 (seq.unit e_35))))
(assert (= a_42 (seq.update a_41 i0 (seq.unit e_33))))
(assert (= a_44 (seq.update a_42 i0 (seq.unit e_43))))
(assert (= a_46 (seq.update a_44 i1 (seq.unit e_45))))
(assert (= e_33 (seq.nth a1 i1)))
(assert (= e_35 (seq.nth a1 i0)))
(assert (= e_37 (seq.nth a_36 i0)))
(assert (= e_39 (seq.nth a_36 i1)))
(assert (= e_43 (seq.nth a_42 i1)))
(assert (= e_45 (seq.nth a_42 i0)))
(assert (not (= a_40 a_46)))
(check-sat)
(exit)
