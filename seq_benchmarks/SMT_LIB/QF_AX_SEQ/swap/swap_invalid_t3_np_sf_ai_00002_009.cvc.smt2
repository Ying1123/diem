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
(declare-fun a_1 () (Seq Element))
(declare-fun a_2 () (Seq Element))
(declare-fun a_4 () (Seq Element))
(declare-fun a_6 () (Seq Element))
(declare-fun a_7 () (Seq Element))
(declare-fun a_8 () (Seq Element))
(declare-fun e_0 () Element)
(declare-fun e_3 () Element)
(declare-fun e_5 () Element)
(declare-fun a1 () (Seq Element))
(declare-fun i0 () Int)
(declare-fun i1 () Int)
(assert (= a_1 (seq.update a1 i1 (seq.unit e_0))))
(assert (= a_2 (seq.update a_1 i1 (seq.unit e_0))))
(assert (= a_4 (seq.update a_2 i0 (seq.unit e_3))))
(assert (= a_6 (seq.update a_4 i1 (seq.unit e_5))))
(assert (= a_7 (seq.update a_2 i0 (seq.unit e_5))))
(assert (= a_8 (seq.update a_7 i0 (seq.unit e_5))))
(assert (= e_0 (seq.nth a1 i1)))
(assert (= e_3 (seq.nth a_2 i1)))
(assert (= e_5 (seq.nth a_2 i0)))
(assert (not (= a_6 a_8)))
(check-sat)
(exit)
