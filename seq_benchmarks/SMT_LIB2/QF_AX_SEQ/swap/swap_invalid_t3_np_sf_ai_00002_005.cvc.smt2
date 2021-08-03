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
(declare-fun a_36 () (Seq Element))
(declare-fun a_38 () (Seq Element))
(declare-fun a_40 () (Seq Element))
(declare-fun a_42 () (Seq Element))
(declare-fun a_43 () (Seq Element))
(declare-fun a_44 () (Seq Element))
(declare-fun a_46 () (Seq Element))
(declare-fun a_47 () (Seq Element))
(declare-fun e_35 () Element)
(declare-fun e_37 () Element)
(declare-fun e_39 () Element)
(declare-fun e_41 () Element)
(declare-fun e_45 () Element)
(declare-fun a1 () (Seq Element))
(declare-fun i0 () Int)
(declare-fun i1 () Int)
(assert (= a_36 (seq.update a1 i0 (seq.unit e_35))))
(assert (= a_38 (seq.update a_36 i1 (seq.unit e_37))))
(assert (= a_40 (seq.update a_38 i1 (seq.unit e_39))))
(assert (= a_42 (seq.update a_40 i0 (seq.unit e_41))))
(assert (= a_43 (seq.update a1 i1 (seq.unit e_37))))
(assert (= a_44 (seq.update a_43 i0 (seq.unit e_35))))
(assert (= a_46 (seq.update a_44 i1 (seq.unit e_45))))
(assert (= a_47 (seq.update a_46 i1 (seq.unit e_45))))
(assert (= e_35 (seq.nth a1 i1)))
(assert (= e_37 (seq.nth a1 i0)))
(assert (= e_39 (seq.nth a_38 i0)))
(assert (= e_41 (seq.nth a_38 i1)))
(assert (= e_45 (seq.nth a_44 i1)))
(assert (not (= a_42 a_47)))
(check-sat)
(exit)
