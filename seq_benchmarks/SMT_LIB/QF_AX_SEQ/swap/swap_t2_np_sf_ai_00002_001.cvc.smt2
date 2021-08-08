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
(declare-fun a_30 () (Seq Element))
(declare-fun a_31 () (Seq Element))
(declare-fun a_33 () (Seq Element))
(declare-fun a_34 () (Seq Element))
(declare-fun e_29 () Element)
(declare-fun e_32 () Element)
(declare-fun a1 () (Seq Element))
(declare-fun i0 () Int)
(declare-fun i1 () Int)
(assert (= a_30 (seq.update a1 i1 (seq.unit e_29))))
(assert (= a_31 (seq.update a_30 i1 (seq.unit e_29))))
(assert (= a_33 (seq.update a_31 i0 (seq.unit e_32))))
(assert (= a_34 (seq.update a_33 i0 (seq.unit e_32))))
(assert (= e_29 (seq.nth a1 i1)))
(assert (= e_32 (seq.nth a_31 i0)))
(assert (not (= a_34 a_34)))
(check-sat)
(exit)
